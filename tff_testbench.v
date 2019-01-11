`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NIT_G
// Engineer: Yashwanth
// 
// Create Date: 01/10/2019 07:28:38 PM
// Design Name: T_FlipFlop_TestBench
// Module Name: tff_testbench
// Project Name: T_FlipFlop
// Target Devices: Basys3
// Tool Versions: Xilinx
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tff_testbench;

reg t, clk, preset, clear;
wire q, qbar;

tff T_FlipFlop(.t(t),.clk(clk),.preset(preset),.clear(clear),.q(q),.qbar(qbar));
initial
begin 
clk=0;
end
always 
begin
#5 clk=~clk;
end
initial
begin

preset=0;
clear=0;

#25 preset=1;
#250 clear=1;

#500 preset=0; clear=0;

#550 t=1;
#900 t=0;


#950 $finish;
end
endmodule
