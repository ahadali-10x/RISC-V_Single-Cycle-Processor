`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2021 02:27:50 PM
// Design Name: 
// Module Name: mainSim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mainSim;
reg clk,rst;
wire [7:0] Anode_Activate;
wire [6:0] LED_out;	
wire  alu_z;	
main ins(.rst(rst), .clk(clk),.Anode_Activate(Anode_Activate),.LED_out(LED_out));

initial begin
rst = 1; clk = 0;#10;

rst = 1;clk = 1;#10;

clk = 0 ;rst = 1;#10;

clk = 1;rst = 1;#10;

clk = 0;rst = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0 ;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

clk = 1;#10;

clk = 0;#10;

end

endmodule