module mainALU(RegSel,Operation,Result,Status);
wire [7:0]A;
wire [7:0]B;
wire [7:0]C;
wire [7:0]D;
reg [7:0]OP1;
reg [7:0]OP2;
input [3:0]RegSel;
input [3:0]Operation;
output [7:0]Result;
output [7:0]Status;
reg [7:0]Result;
reg [7:0]Status=8'b00000000;
wire out1;
wire out2;
wire out3;
wire [7:0]a1;
wire [7:0]b1;
wire [7:0]c1;
wire [7:0]d1;
wire [7:0]e;
wire [7:0]f;
wire [7:0]g;
wire [7:0]h;
wire [7:0]i;
wire [7:0]j;
wire [7:0]k;
wire [7:0]l;
registerfile regis(A,B,C,D);
onescomplement compl(a1,OP1);
twoscomplement twos1(b1,OP1);
twosaddition addt1(c1,out1,OP1,OP2);
subtraction sub1(d1,out2,OP1,OP2);
comparator compare(e,OP1,OP2); 
andgate andg1(f,OP1,OP2);
orgate org1(g,OP1,OP2);
xorgate xorg1(h,OP1,OP2);
xnorgate xnorg1(i,OP1,OP2);
shiftright shr1(j,OP1);
shiftleft shl1(k,OP1);
addition addi1(l,out3,OP1,OP2);
always @*
begin
case(RegSel)

4'b0010: begin OP1=A; OP2=C; end
4'b0011: begin OP1=A; OP2=D; end
4'b0001: begin OP1=A; OP2=B; end
4'b0000: begin OP1=A; OP2=A; end
4'b0110: begin OP1=B; OP2=C; end
4'b0111: begin OP1=B; OP2=D; end
4'b0100: begin OP1=B; OP2=A; end 
4'b0101: begin OP1=B; OP2=B; end
4'b1001: begin OP1=C; OP2=B; end
4'b1000: begin OP1=C; OP2=A; end
4'b1010: begin OP1=C; OP2=C; end
4'b1011: begin OP1=C; OP2=D; end
4'b1101: begin OP1=D; OP2=B; end
4'b1100: begin OP1=D; OP2=A; end
4'b1110: begin OP1=D; OP2=C; end
4'b1111: begin OP1=D; OP2=D; end
default: begin OP1=A; OP2=C; end

endcase	
end
always @(*)

begin
if(Operation==4'b0000) 
begin 
Result <= a1;
	if(Result==8'b00000000) 
	begin 
	Status[1] <= 1'b1;
	end
end
else if (Operation==4'b0001)
begin
Result <= b1;
	if(Result==8'b00000000) 
	begin 
	Status[1] <= 1'b1;
	end
end
else if (Operation==4'b0010)
begin
Result <= c1;
	if(Result==8'b00000000) 
	begin 
	Status[1] <= 1'b1;
	end
	if(out1==1'b1) 
	begin 
	Status[2] <= 1'b1;
	end

end
else if (Operation==4'b0011)
begin
Result <= d1;
	if(Result==8'b00000000) 
	begin 
	Status[1] <= 1'b1;
	end
	
	if(out2==1'b1) 
	begin 
	Status[0] <= 1'b1;
	end
end
else if (Operation==4'b0100)
begin
Result <= e;
end
else if (Operation==4'b0101)
begin
Result <= f;
	if(Result==8'b00000000) 
	begin 
	Status[1] <= 1'b1;
	end
end
else if (Operation==4'b0110)
begin
Result <= g;
	if(Result==8'b00000000) 
	begin 
	Status[1] <= 1'b1;
	end
end
else if (Operation==4'b0111)
begin
Result <= h;
	if(Result==8'b00000000) 
	begin 
	Status[1] <= 1'b1;
	end
end
else if (Operation==4'b1000)
begin
Result <= i;
	if(Result==8'b00000000) 
	begin 
	Status[1] <= 1'b1;
	end
end
else if (Operation==4'b1001)
begin
Result <= j;
end
else if (Operation==4'b1010)
begin
Result <= k;
end
else if (Operation==4'b1011)
begin
Result <= l;
	if(Result==8'b00000000) 
	begin 
	Status[1] <= 1'b1;
	end
	if(out3==1'b1) 
	begin 
	Status[2] <= 1'b1;
	end
end
else 
begin
Result <= 8'b00000000;
end
end 
endmodule  