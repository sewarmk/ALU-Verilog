module xnorgate(o,a,b);
	input [7:0] a;
	input [7:0] b;
	output wire [7:0] o;
xnor xnor1(o[0],a[0],b[0]);
xnor xnor2(o[1],a[1],b[1]);
xnor xnor3(o[2],a[2],b[2]);
xnor xnor4(o[3],a[3],b[3]);
xnor xnor5(o[4],a[4],b[4]);
xnor xnor6(o[5],a[5],b[5]);
xnor xnor7(o[6],a[6],b[6]);
xnor xnor8(o[7],a[7],b[7]);
	

endmodule 