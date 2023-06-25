`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2023 13:53:47
// Design Name: 
// Module Name: vedic_2_x_2
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


module vedic_2_x_2(a,b,c);
input [1:0]a;                   //2 bit input
input [1:0]b;                        //2 bit input
output [3:0]c;                   //4 bit output
wire [3:0]c;
wire [3:0]temp;
assign c[0]=a[0]&b[0]; 
assign temp[0]=a[1]&b[0];
assign temp[1]=a[0]&b[1];
assign temp[2]=a[1]&b[1];
half_adder z1(temp[0],temp[1],c[1],temp[3]);            //instantiating half adder
half_adder z2(temp[2],temp[3],c[2],c[3]);
endmodule
