module shiftleft(X,A);
input [7:0]A;
output [7:0]X;
assign X[0]=1'b0;
assign X[1]=A[0];
assign X[2]=A[1];
assign X[3]=A[2];
assign X[4]=A[3];
assign X[5]=A[4];
assign X[6]=A[5];
assign X[7]=A[6];
endmodule 