module andgate(o,a,b);
	input [7:0] a;
	input [7:0] b;
	output wire [7:0] o;

and andd1(o[0],a[0],b[0]);
and andd2(o[1],a[1],b[1]);
and andd3(o[2],a[2],b[2]);
and andd4(o[3],a[3],b[3]);
and andd5(o[4],a[4],b[4]);
and andd6(o[5],a[5],b[5]);
and andd7(o[6],a[6],b[6]);
and andd8(o[7],a[7],b[7]);
	

endmodule 
