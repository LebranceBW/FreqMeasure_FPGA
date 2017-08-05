`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:49:18 08/04/2017
// Design Name:   freqMeasure_Mod
// Module Name:   H:/ISEWorkspace/FreqMeasure_SPI/FreqMeasure_SPI/freq_mod_test.v
// Project Name:  FreqMeasure_SPI
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: freqMeasure_Mod
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module freq_mod_test;

	// Inputs
	reg baseClk;
	reg sigClk;
	reg sendBusy;
	reg hard_Clr;
	wire enable;
	// Outputs
	wire [7:0] data;
	wire sendEnable;
	wire[1:0] Status;
	// Instantiate the Unit Under Test (UUT)
	freqMeasure_Mod uut (
		.baseClk(baseClk), 
		.sigClk(sigClk), 
		.data(data), 
		.sendEnable(sendEnable), 
		.sendBusy(sendBusy), 
		.hard_Clr(hard_Clr),
		.Status(Status),
		.enable(enable)
	);

	initial begin
		// Initialize Inputs
		baseClk = 0;
		sigClk = 0;
		sendBusy = 0;
		hard_Clr = 0;

		// Wait 100 ns for global reset to finish
		#100;  
		hard_Clr = 1;
		#20 hard_Clr = 0;
		// Add stimulus here
	end
 
always 
	#5 baseClk = !baseClk;
always
	#500 sigClk = !sigClk;
always@(posedge sendEnable)
	begin
		sendBusy <= 1'b1;
		#1000 sendBusy <= 1'b0;
	end
endmodule

