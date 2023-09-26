`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2023 02:41:08 PM
// Design Name: 
// Module Name: final
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


module final(
    input [3:0] A,
    input [3:0] B,
    input Sel,
    output [6:0] Display
    );
    
    wire [3:0] S; 
    wire [3:0] Co;
    wire [3:0] Out;
    wire Cout;
   
   
    
    adder4 add(.A(A), .B(B), .CO( Cout), .S(S));
    
    assign Co= {3'b0, Cout};
   
    mux mu(.Sum(S), .Cout(Co), .Sel(Sel), .Out(Out));
    
    sevenseg dis(.sum(Out), .display(Display));
    
