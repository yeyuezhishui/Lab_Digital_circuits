`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/13 08:39:41
// Design Name: 
// Module Name: comparator
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


module comparator(num1,num2,result);
    input  num1, num2;
    output [1:0]result;//when num1 greater than num2, result == {1,0}
    reg [1:0]result;
    
    initial 
        begin
//            num1=0;
//            num2=0;
            result = 2'b00;
        end
    
    always@(num1,num2)
    begin
    if(num1==1)
        begin
            if(num2==0)
                begin
                    result = 2'b01;
                end
            else if(num2==1)
                begin
                    result = 2'b11;
                end
         end
         
    if(num1==0)
        begin
            if(num2==0)
                begin
                    result = 2'b11;
                end
            else
                begin
                    result = 2'b10;
                end
        end
    end
endmodule