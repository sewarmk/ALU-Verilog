module checkequal(  input wire [7:0] a,
  input wire [7:0] b,
 output equal);
 
wire [7:0]x;
wire [3:0]o;
wire [1:0] s;
wire t;
xnorgate xnorr(x,a,b);
and and20(o[0],x[0],x[1]);
and and23(o[1],x[2],x[3]);
and and24(o[2],x[4],x[5]);
and and25(o[3],x[6],x[7]);
and and26(s[0],o[0],o[1]);
and and27(s[1],o[2],o[3]);
and andd33(t,s[0],s[1]);
assign equal = (t)?1'b1:1'b0;



endmodule 