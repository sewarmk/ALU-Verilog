module registerfile(Output1,Output2,Output3,Output4);
wire [7:0]A;
wire [7:0]B;
wire [7:0]C;
wire [7:0]D;
output wire [7:0]Output1;
output wire [7:0]Output2;
output wire [7:0]Output3;
output wire [7:0]Output4;
assign A=8'b01001000;
assign B=8'b10101111;
assign C=8'b11001100;
assign D=8'b00110010;
assign Output1=A;
assign Output2=B;
assign Output3=C;
assign Output4=D;


/*assign Output1[7:0] = (Input[3:2]==00)?A:(Input[3:2]==01)?B:(Input[3:2]==10)?C:D;
assign Output2[7:0] = (Input[1:0]==00)?A:(Input[1:0]==01)?B:(Input[1:0]==10)?C:D;*/

/*
always @*
begin
case(Input)

4'b0010: begin Output1=A; Output2=C; end
4'b0011: begin Output1=A; Output2=D; end
4'b0001: begin Output1=A; Output2=B; end
4'b0000: begin Output1=A; Output2=A; end
4'b0110: begin Output1=B; Output2=C; end
4'b0111: begin Output1=B; Output2=D; end
4'b0100: begin Output1=B; Output2=A; end 
4'b0101: begin Output1=B; Output2=B; end
4'b1001: begin Output1=C; Output2=B; end
4'b1000: begin Output1=C; Output2=A; end
4'b1010: begin Output1=C; Output2=C; end
4'b1011: begin Output1=C; Output2=D; end
4'b1101: begin Output1=D; Output2=B; end
4'b1100: begin Output1=D; Output2=A; end
4'b1110: begin Output1=D; Output2=C; end
4'b1111: begin Output1=D; Output2=D; end
default: begin Output1=A; Output2=C; end

endcase	
end */
endmodule 