module testbench;
reg [3:0] RegSel;
reg [3:0] Opr;
wire [7:0]Res;
wire [7:0]Stat;


mainALU mainALU_1(RegSel,Opr,Res,Stat);
   initial
   begin
      //case 0
      RegSel = 4'b0001; Opr= 4'b0101;
      #1 $display("Res = %b", Res);
	   #2 $display("Stat = %b", Stat);
      //case 1
      RegSel = 4'b0110; Opr= 4'b0110;
      #1 $display("Res = %b", Res);
	   #2 $display("Stat = %b", Stat);
      //case 2
      RegSel = 4'b0010; Opr= 4'b0111;
      #1 $display("Res = %b", Res);
	   #2 $display("Stat = %b", Stat);
      //case 3
      RegSel = 4'b1101; Opr= 4'b0100;
      #1 $display("Res = %b", Res);
	   #2 $display("Stat = %b", Stat);
      //case 4
      RegSel = 4'b1100; Opr= 4'b1001;
      #1 $display("Res = %b", Res);
	   #2 $display("Stat = %b", Stat);
      //case 5
      RegSel = 4'b0011; Opr= 4'b1011;
      #1 $display("Res = %b", Res);
	   #2 $display("Stat = %b", Stat);
      //case 6
      RegSel = 4'b1001; Opr= 4'b0011;
      #1 $display("Res = %b", Res);
	   #2 $display("Stat = %b", Stat);	
      //case 7
      RegSel = 4'b0000; Opr= 4'b0011;
      #1 $display("Res = %b", Res);
	   #2 $display("Stat = %b", Stat);


   end


endmodule  