module xorgate(o,a,b);
	input [7:0] a;
	input [7:0] b;
	output wire [7:0] o;
xor xor1(o[0],a[0],b[0]);
xor xor2(o[1],a[1],b[1]);
xor xor3(o[2],a[2],b[2]);
xor xor4(o[3],a[3],b[3]);
xor xor5(o[4],a[4],b[4]);
xor xor6(o[5],a[5],b[5]);
xor xor7(o[6],a[6],b[6]);
xor xor8(o[7],a[7],b[7]);
	

endmodule 