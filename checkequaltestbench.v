module equaltestbench;

reg [7:0] a;
reg [7:0] b;
wire equal;

checkequal checkequal_1(a,b,equal);
   
   initial
   begin
      //case 0
      a = 8'b10101111; b= 8'b10000000;
      #1 $display("equal = %b", equal);
	  
      //case 1
		a = 8'b00000000; b= 8'b00000000;
      #1 $display("equal = %b", equal);
	  
 
   end


endmodule 