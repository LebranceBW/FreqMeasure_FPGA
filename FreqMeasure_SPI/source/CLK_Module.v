`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:53:41 07/22/2017 
// Design Name: 
// Module Name:    CLK_Module 
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
module CLK_Module(clk,sclk
    );
input clk;
output sclk;  //Éú³É1MÊ±ÖÓ

reg[6:0] clkCnt;
reg sclk;
initial
	begin
		clkCnt <= 0;
		sclk <= 0;
	end

always@(posedge clk)
	begin
		clkCnt <= clkCnt + 1'b1;
		if(clkCnt >= 9'd100)
			begin
				sclk = !sclk;
				clkCnt <= 0;
			end
	end

endmodule
