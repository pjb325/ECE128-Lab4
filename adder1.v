`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2023 01:48:47 PM
// Design Name: 
// Module Name: adder1
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



module adder1(A, B, CI, S, CO);

    input A,B,CI;
    output reg S, CO;
    
    always@(*)
    begin
        case( {A,B,CI})
            3'b000: S=0;
            3'b001: S=1;
            3'b010: S=1;
            3'b011: S=0;
            3'b100: S=1;
            3'b101: S=0;
            3'b110: S=0;
            3'b111: S=1;
        endcase
        case({A,B,CI})
            3'b000: CO=0;
            3'b001: CO=0;
            3'b010: CO=0;
            3'b011: CO=1;
            3'b100: CO=0;
            3'b101: CO=1;
            3'b110: CO=1;
            3'b111: CO=1;
        endcase
   end
endmodule
