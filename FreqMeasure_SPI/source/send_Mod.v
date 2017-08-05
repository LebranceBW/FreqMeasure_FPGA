`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:18:29 07/22/2017 
// Design Name: 
// Module Name:    Send_Module 
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
//////////////////////////////////////////////////////////////////////////////////
//
module Send_Module(clk,sclk,riseSig,data,SCK,MOSI,BUSY,reset,newSend,cs
    );
input sclk,riseSig,clk,reset;
input[7:0] data;
output SCK,MOSI,BUSY,newSend,cs;

reg newData;
reg riseSigCache;
reg[7:0] dataLock;
reg beginNewSend;
reg busy,cs;
reg MOSI,SCK;
reg newSend;
reg[3:0] sendCnt;

always @(posedge clk,posedge reset)
	if(reset == 1)
		begin
			riseSigCache <= 0;
			newData <= 0;
		end
	else
		begin
			riseSigCache <= riseSig;
			newData <= (~riseSigCache)&riseSig;
		end
			
always @(posedge clk,posedge reset)
	begin
		if(reset == 1)
			begin
				dataLock <= 8'H00;
				newSend <= 0;
			end
		else if(newData && !busy)
			begin
				dataLock <= data;
				newSend <= 1'b1;

			end
		else if(sendCnt == 4'd10)
			begin
				newSend <= 0;
			end
			
	end

reg sclkCache;
wire sclkTrig;
always @(posedge clk)
	sclkCache <= sclk;
assign sclkTrig = sclk ^ sclkCache;
	
always @(posedge clk or posedge reset)
	if(reset)
		begin
			cs = 1;
			busy = 0;
			MOSI = 0;
			SCK = 0;
			sendCnt = 0;
		end
	else if(newSend)
		begin
			if(sclkTrig)
				if(sclk)
					begin
						busy = 1;
						cs = 0;
						if((sendCnt != 0)&&(sendCnt != 9))
							begin
								MOSI = dataLock[4'd8 - sendCnt];
								SCK = 1;
							end
					end
				else if(!sclk && busy)
							begin
								SCK = 0;									
								sendCnt = sendCnt + 1'b1;
								if(sendCnt == 10) 
									cs = 1;
							end
		end
	else 
		begin
			sendCnt = 1'b0;
			MOSI = 1;
			busy = 0;
		end
	
assign BUSY = busy;
endmodule
