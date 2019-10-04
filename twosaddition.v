module twosaddition(Z,cout,X,Y);
input [7:0]X;
input [7:0]Y;
output [7:0]Z;
output cout;
wire [7:0]out;
fulladder add1(Z[0],out[0],X[0],Y[0],0);
fulladder add2(Z[1],out[1],X[1],Y[1],out[0]);
fulladder add3(Z[2],out[2],X[2],Y[2],out[1]);
fulladder add4(Z[3],out[3],X[3],Y[3],out[2]);
fulladder add5(Z[4],out[4],X[4],Y[4],out[3]);
fulladder add6(Z[5],out[5],X[5],Y[5],out[4]);
fulladder add7(Z[6],out[6],X[6],Y[6],out[5]);
fulladder add8(Z[7],out[7],X[7],Y[7],out[6]);
assign cout=out[7];
endmodule 