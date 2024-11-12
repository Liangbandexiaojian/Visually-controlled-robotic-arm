`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date:    16:44:15 01/18/2023 
// Module Name:    OutputSERDES 
//////////////////////////////////////////////////////////////////////////////////
module OutputSERDES_v #(
	parameter	kParallelWidth	= 10
)(
	input 					PixelClk,	//	1X Clock
	input 					SerialClk,	//	2X Clock for LVDS 5:1
	
	output reg	[kParallelWidth/2-1:0] 	sDataOut_p,
	output reg	[kParallelWidth/2-1:0] 	sDataOut_n,
	
	input 	[kParallelWidth-1:0] 	pDataOut,
	
	input 					aRst
);
	
    
	reg 			rc_data = 0; 
	always @(posedge SerialClk) begin
		rc_data <= rc_data + 1; 
		
		//	Pump Lsb first. 
		if(rc_data)
			{sDataOut_n, sDataOut_p} <= pDataOut; 
		
		//	Pump Msb second. 
		else
			sDataOut_p <= sDataOut_n; 
	end
	
	
endmodule
