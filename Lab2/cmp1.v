`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/13 09:59:35
// Design Name: 
// Module Name: cmp1
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

module cmp1(
    input a,b,
    output reg f1,f2,f3
    );
    
    always@(a,b)
    begin
    case({a,b})
        2'b00: {f1,f2,f3} <= 010;
        2'b11: {f1,f2,f3} <= 010;
        2'b01: {f1,f2,f3} <= 001;
        2'b10: {f1,f2,f3} <= 100;
    endcase
    end
endmodule

