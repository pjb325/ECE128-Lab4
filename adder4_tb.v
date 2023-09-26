`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2023 03:46:21 PM
// Design Name: 
// Module Name: adder4_tb
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


module adder4_tb();
    
    reg [3:0] A, B;
    reg Sel;
    wire [6:0] Display;
    
    final UUT(.A(A), .B(B), .Sel(Sel), .Display(Display));
    initial 
    begin
        A = 4'b0000; B = 4'b0000; Sel = 1'b0;
        #10;
        A = 4'b0001; B = 4'b0001;  Sel = 1'b0;
        #10;
        A = 4'b0010; B = 4'b1000;  Sel = 1'b0;
        #10;
        A = 4'b1111; B = 4'b1111;  Sel = 1'b0;
        #10;
        A = 4'b1110; B = 4'b1001; Sel = 1'b1;
        #10;
        A = 4'b1111; B = 4'b1111;  Sel = 1'b1;
        #10;
        A = 4'b1100; B = 4'b0001; Sel = 1'b1;
        #10;
        A = 4'b0000; B = 4'b0111; Sel = 1'b1;
        #10;
     $finish;
     end
endmodule
