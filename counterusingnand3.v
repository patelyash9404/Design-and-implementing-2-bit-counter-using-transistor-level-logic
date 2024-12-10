// DSCH 3.5
// 30-10-2024 11:12:31
// C:\Users\yash patel\Desktop\nirma univeristy\nirma sem 5\vlsi\project\counterusingnand3.sch

module counterusingnand3( clock,reset,Q2,Q1);
 input clock,reset;
 output Q2,Q1;
 wire w5,w7,w8,w9,w10,w11,w12,w13;
 wire w14,w15;
 nand #(2) nand3_1(w7,Q2,w5,reset);
 nand #(2) nand2_2(Q1,w8,w9);
 nand #(2) nand3_3(w10,w5,w7,reset);
 nand #(2) nand3_4(w12,w9,clock,w11);
 nand #(2) nand3_5(w14,w13,w8,reset);
 nand #(2) nand2_6(w15,w9,w11);
 nand #(2) nand2_7(w13,w14,w10);
 nand #(2) nand3_8(w5,w14,w8,w10);
 nand #(2) nand2_9(Q2,w7,w14);
 nand #(2) nand3_10(w8,Q1,w12,reset);
 nand #(2) nand3_11(w11,w12,w8,reset);
 nand #(2) nand3_12(w9,w15,clock,reset);
endmodule

// Simulation parameters in Verilog Format
always
#64000 clock=~clock;
#200 reset=~reset;

// Simulation parameters
// clock CLK 320 320
// reset CLK 1 1
