module orgate(o,a,b);
	input [7:0] a;
	input [7:0] b;
	output wire [7:0] o;
	
or or1(o[0],a[0],b[0]);
or or2(o[1],a[1],b[1]);
or or3(o[2],a[2],b[2]);
or or4(o[3],a[3],b[3]);
or or5(o[4],a[4],b[4]);
or or6(o[5],a[5],b[5]);
or or7(o[6],a[6],b[6]);
or or8(o[7],a[7],b[7]);
	

endmodule 