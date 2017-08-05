`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:44:29 08/04/2017
// Design Name:   top
// Module Name:   H:/ISEWorkspace/FreqMeasure_SPI/FreqMeasure_SPI/test/top_mod_test.v
// Project Name:  FreqMeasure_SPI
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top_mod_test;

	// Inputs
	reg clk;
	reg sigClk;
	reg rst;
	wire[7:0] data;

	// Outputs
	wire MOSI;
	wire CS;
	wire SCK;
	wire sclk;
	wire sendEnable;
	wire BUSY;
	wire[1:0] Status;
	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.MOSI(MOSI), 
		.CS(CS), 
		.SCK(SCK), 
		.sigClk(sigClk), 
		.rst(rst), 
		.data(data), 
		.sclk(sclk), 
		.sendEnable(sendEnable), 
		.BUSY(BUSY),
		.Status(Status)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		sigClk = 0;
		rst = 0;


		// Wait 100 ns for global reset to finish
		#100;
		rst = 1;
		#50
		rst = 0;
		// Add stimulus here

	end
always 
	#5 clk = !clk;
always
	#20 sigClk = !sigClk;        
endmodule

