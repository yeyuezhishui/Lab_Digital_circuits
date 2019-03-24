`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/04 15:13:35
// Design Name: 
// Module Name: four_bit_binary_counter
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


module four_bit_binary_counter#(parameter max = 4'd15, parameter min = 4'd0, parameter width = 4)(CP,CLR,LD,M,DCBA,Q,Qcc);
    input CP,CLR,LD,M;
    input [width-1:0] DCBA;
    output reg [width-1:0] Q;
    output reg Qcc;
    
    initial begin
        Q = min;
        Qcc = 1;
    end
    
    always @ (posedge CP or negedge CLR or negedge LD) begin
      if(!CLR) begin
        Q <= min;
        Qcc <= 1;
      end
      else if(!LD) begin
        Q <= DCBA;
        Qcc <= 1;
      end 
      else if(M) begin
        if(Q<max)begin
            Q <= Q+1;
            Qcc <= 1;
        end 
        else begin
            Q <= min;
            Qcc <= 0;
        end
       end
       else if(!M)begin
        if(Q>min)begin
            Q <= Q-1;
            Qcc <= 1;
        end
        else begin
            Q <= max;
            Qcc <= 0;
        end
       end
    end
endmodule
