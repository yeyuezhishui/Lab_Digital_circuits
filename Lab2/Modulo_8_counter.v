`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/04 17:09:12
// Design Name: 
// Module Name: Modulo_8_counter
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


module Modulo_8_counter(cp,clr,m,q,qcc);
    input  cp,clr,m;
    output qcc;
    output [3:0]q;
    
    reg [3:0]dcba = 4'b0101;
    wire ld = 1;
    four_bit_binary_counter #(.max(4'd9),.min(4'd2), .width(4)) top (.CP(cp),.CLR(clr),.LD(ld),.M(m),.DCBA(dcba),.Q(q),.Qcc(qcc));
endmodule
