module fulladder(S,Cout,A,B,Cin);
output S,Cout;
input A,B,Cin;
wire x1,x2,x3;    
 xor f1(x1,A,B);
 and f2(x2,A,B);
 and f3(x3,x1,Cin);
 or f4(Cout,x2,x3);
 xor f5(S,x1,Cin);
endmodule 