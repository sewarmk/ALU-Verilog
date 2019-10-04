module greatertestbench;
reg [7:0] a;
reg [7:0] b;
wire g;

checkgreater checkgreater_1(g,a,b);

   initial
   begin
      //case 0
      a = 8'b00101111; b= 8'b10000001;
      #1 $display("g = %b", g);
	  
      //case 1
		a = 8'b10000000; b= 8'b00000000;
      #1 $display("g = %b", g);
      //case 3
		a = 8'b00000000; b= 8'b00000000;
      #1 $display("g = %b", g);	  
 
   end 
	endmodule 