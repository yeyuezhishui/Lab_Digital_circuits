`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/13 09:20:00
// Design Name: 
// Module Name: comparator_2
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


module comparator_2(num1,num2,result);
    input [2:0]inNum1;
    input [2:0]inNum2;
//    output [2:0]result;
//    reg [2:0]result;
    output F1,F2,F3;
    reg F1,F2,F3;
    wire [1:0]cmp_result;
    wire [1:0]cmp_result2;
    wire [1:0]cmp_result3;
//    module comparator(num1,num2,result);
    initial
        begin
//            result = 3'b000;
//            F1 = F2 = F3 = 0;
            F1 = 0;
            F2 = 0;
            F3 = 0;
            cmp_result = 2'b00;
        end
        
    always@(inNum1,inNum2)
    begin
        comparator firstDigit(inNum1[2],inNum2[2],cmp_result);
       
        if(cmp_result == 2'b10)
            begin
                F1 = 1;
                F2 = 0;
                F3 = 0;
            end
         else if(cmp_result == 2'b01)
            begin
                F3 = 1;
                F2 = 0;
                F1 = 0;          
            end
         else
            begin
               comparator SecondDigit(inNum1[1],inNum1[1],cmp_result); 
            end
          
    end
endmodule
