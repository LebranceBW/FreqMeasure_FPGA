`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:31:07 08/04/2017
// Design Name:   top
// Module Name:   H:/ISEWorkspace/FreqMeasure_SPI/FreqMeasure_SPI/test/top_test.v
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

module top_test;

	// Inputs
	reg clk;
	reg sigClk;
	reg rst;

	// Outputs
	wire MOSI;
	wire CS;
	wire SCK;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.MOSI(MOSI), 
		.CS(CS), 
		.SCK(SCK), 
		.sigClk(sigClk), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		sigClk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
      rst = 1;
		#100 rst = 0;
		// Add stimulus here

	end
    
endmodule

