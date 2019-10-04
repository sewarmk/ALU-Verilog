module comparator (Result,a,b);
input [7:0]a;
input [7:0]b;
output [7:0]Result;

wire i,j;
checkequal eq1(a,b,i);
checkgreater gr1(j,a,b);
assign Result[7:2]=6'b000000;
assign Result[1:0] = (i==1)?2'b00:(j == 1)?2'b01:2'b10;

endmodule

