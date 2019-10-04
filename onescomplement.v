module onescomplement(Y,X);
input  [7:0]X;
output [7:0]Y;
not one1(Y[0],X[0]);
not one2(Y[1],X[1]);
not one3(Y[2],X[2]);
not one4(Y[3],X[3]);
not one5(Y[4],X[4]);
not one6(Y[5],X[5]);
not one7(Y[6],X[6]);
not one8(Y[7],X[7]);
endmodule 