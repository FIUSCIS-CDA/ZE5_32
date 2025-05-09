///////////////////////////////////////////////////////////////////////////////////
// Testbench for Component: ZE5_32
// Package: FIUSCIS-CDA
// Course: CDA3102 (Computer Architecture), Florida International University
// Developer: Trevor Cickovski
// License: MIT, (C) 2025 All Rights Reserved
///////////////////////////////////////////////////////////////////////////////////

module testbench();
`include "../Test/Test.v"
///////////////////////////////////////////////////////////////////////////////////
// Input: A (16-bit)
reg[4:0] A;
///////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////
// Output: Y (32-bit)
wire[31:0] Y;
///////////////////////////////////////////////////////////////////////////////////

ZE5_32 myZE(.A(A), .Y(Y));

initial begin
////////////////////////////////////////////////////////////////////////////////////////
// Test: A=27
$display("Testing positive A=3782");
A=27;   #10; 
verifyEqual32(Y, A);
////////////////////////////////////////////////////////////////////////////////////////
$display("All tests passed.");
end

endmodule
