module twoscomplement(Y,X);
input  [7:0]X;
output [7:0]Y;
wire [7:0]R;
wire o;

onescomplement one9(R,X);
addition add9(Y,o,R,8'b00000001);

endmodule 