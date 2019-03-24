`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/04 23:30:59
// Design Name: 
// Module Name: moore_fsm
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


module mealy_fsm(a,clock1,y,p_state);
    input a,clock1;
    output reg [2:0]p_state;
    output reg y;
    initial
    begin
        p_state <= 0;
        y <= 0;
    end
    parameter ST0=0,ST1=1,ST2=2,ST3=3,ST4=4;
    reg [2:0] n_state;
    
    always @ (negedge clock1)
        p_state <= n_state;
    always @ (p_state or a) begin:comb_part
    case (p_state)
        ST0:
            begin
            y <= 0;
            n_state <= a?ST1:ST0;
            end
        ST1:
            begin
            y <= 0;
            n_state <= a?ST1:ST2;
            end
        ST2:
            begin
            y <= 0;
            n_state <= a?ST3:ST0;
            end
        ST3:
            begin
            y <= 0;
            n_state <= a?ST4:ST2;
            end
        ST4:
            begin
            y <= a?0:1;
            n_state <= a?ST0:ST1;
            end
        default:
            n_state <= n_state;
     endcase
   end 
endmodule
