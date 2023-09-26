`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2023 01:46:35 PM
// Design Name: 
// Module Name: adder4
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


module adder4(
    input [3:0] A,
    input [3:0] B,
    output [3:0] S,
    output CO);
    
    wire [3:0] Cout;
    wire Cin;
    assign Cin = 1'b0;
    
    adder1 add0(.A(A[0]), .B(B[0]), .CI(Cin), .S(S[0]), .CO(Cout[0]));
    adder1 add1(.A(A[1]), .B(B[1]), .CI(Cout[0]), .S(S[1]), .CO(Cout[1]));
    adder1 add2(.A(A[2]), .B(B[2]), .CI(Cout[1]), .S(S[2]), .CO(Cout[2]));
    adder1 add3(.A(A[3]), .B(B[3]), .CI(Cout[2]), .S(S[3]), .CO(Cout[3]));
    assign CO = Cout[3];
    
    
endmodule

module sevenseg(sum, display);
    input [3:0] sum;
    output reg [6:0] display;
    always@(sum)
    begin
        case(sum)
            4'b0000: display = 7'b0000001;
            4'b0001: display = 7'b1001111;
            4'b0010: display = 7'b0010010;
            4'b0011: display = 7'b0000110;
            4'b0100: display = 7'b1001100;
            4'b0101: display = 7'b0100100;
            4'b0110: display = 7'b0100000;
            4'b0111: display = 7'b0001111;
            4'b1000: display = 7'b0000000;
            4'b1001: display = 7'b0001100;
        endcase
    end
endmodule

module mux(Sum, Cout, Sel, Out);
    input [3:0] Sum;
    input [3:0] Cout;
    input Sel;
    output reg [3:0] Out;
    
    always @(*)
    begin 
        case(Sel)
            1'b0: Out = Cout;
            1'b1: Out = Sum;
        endcase
    end
    
endmodule
