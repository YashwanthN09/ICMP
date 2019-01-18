`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2019 01:51:02 PM
// Design Name: 
// Module Name: checksum_tb
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


module Checksumtb();
reg hardreset;
reg [31:0]inputdata;
reg clock;
wire valid;
wire [15:0] checksum;
Checksum s0(hardreset,inputdata,clock,checksum,valid);
initial
begin
clock=0;
hardreset=1;
inputdata=0;
#5 hardreset=0;
inputdata=32'h0975;
#10 inputdata=32'h0976;
#10 inputdata=32'h0977;
#10 inputdata=32'h0978;
#10 inputdata=32'h0979;
#10 inputdata=32'h0980;
end
always
begin
#5 clock=~clock;
end
always
begin
#100 $finish;
end
endmodule
