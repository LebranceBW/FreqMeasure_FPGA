`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:58:45 08/03/2017 
// Design Name: 
// Module Name:    Freq_Count 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module freqMeasure_Mod(baseClk,sigClk,data,sendEnable,sendBusy,hard_Clr,Status,enable,baseCount
    );
	input baseClk,sigClk,hard_Clr,sendBusy;
	output[7:0]data;
	output sendEnable,enable;
	output[1:0] Status;
	output[31:0] baseCount;

	reg[31:0] baseCount;
	reg sendEnable;
	reg[7:0] data;
	reg[8:0] sigCount; //基准时钟计数器，测试信号计数器
	reg baseOvf,sigOvf;//允许计数信号与溢出信号
	reg enable;
	wire soft_Clr;
	assign clr = soft_Clr | hard_Clr; //外部复位与内部复位
	
	assign Ovf = baseOvf | sigOvf;
	parameter Mer_Status = 2'b01,Send_Status = 2'b11,Init_Status=2'b00,Err_Status = 2'b10;
	reg[1:0] Status;
	
/*Mersure_Status*/
	always @(posedge baseClk or posedge clr)	//基准信号计数器的计数与溢出信号
		if(clr) 
			begin
				baseCount <= 32'd0;
				baseOvf <= 0;
			end
		else if(baseCount == 32'HFFFFFFFF) baseOvf <= 1;
		else if((Status == Mer_Status)&& (!Ovf)&&enable)
			baseCount <= baseCount+ 32'd1;
			
	always @(posedge sigClk or posedge clr) //被测信号计数器
		if(clr)
			begin
				sigCount <= 8'd0;
				sigOvf <= 0;
			end
		else if(sigCount == 8'HFF) sigOvf <= 1;
		else if((Status == Mer_Status)&&(!Ovf) )
				sigCount <= sigCount+ 8'd1;
	
	always @(posedge sigClk or posedge clr)
		if(clr)
				enable <= 1'b0;
		else if((Status == Mer_Status)&&(!Ovf) )
				begin
					if(sigCount <= 8'd100)
						enable <= 1;
					else
						enable <= 0;
				end
/*Send_Status*/
	reg[2:0] count;
	always @(posedge baseClk)
		if(clr)
			begin
				count <= 3'b000;
				sendEnable <= 1'b0;
				data <= 8'H00;
				
			end	
		else if(Status == Send_Status) 
			begin
				if(!sendBusy)
					begin
						if((!sendEnable)&& (count <= 3'b100))
							begin
								case(count)
									3'b000: data <= 8'HFF;
									3'b001: data <= baseCount[7:0];
									3'b010: data <= baseCount[15:8];
									3'b011: data <= baseCount[23:16];
									3'b100: data <= baseCount[31:24];
									default: data <= 8'HXX;
								endcase
									sendEnable <= 1'b1;
									count <= count + 3'b1;
							end
					end
				else 
						sendEnable <= 1'b0;		
			end
/*Init_Status*/	
assign soft_Clr = (Status == Init_Status);		
//always @(posedge baseClk)
//	if(Status == Init_Status)
//		soft_Clr = 1'b1;
//	else
//		soft_Clr = 1'b0;
/*状态机*/	
	always @(posedge baseClk or posedge hard_Clr)
		if(hard_Clr)
			Status <= Init_Status;
		else
			case(Status)
				Init_Status:if((sigCount == 6'b000000) && (baseCount == 32'H0000_0000))
								Status <= Mer_Status;
				Mer_Status: if((!enable)&&(sigCount >= 8'd100))
									Status <= Send_Status;
								else if(Ovf)
									Status <= Err_Status;
				Send_Status: if((count == 3'b101)&&(!sendBusy))
								Status <= Init_Status;
				Err_Status:Status <= Init_Status;
				default:Status <= Init_Status;
			endcase
endmodule
