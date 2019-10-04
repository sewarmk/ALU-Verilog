module comparatortestbench;
reg [7:0] a;
reg [7:0] b;
wire [7:0]result;

comparator comparator_1(result,a,b);

   initial
   begin
      //case 0
      a = 8'b00101111; b= 8'b10000001;
      #1 $display("result = %b", result);
	  
      //case 1
		a = 8'b10000000; b= 8'b00000000;
      #1 $display("result = %b", result);
      //case 3
		a = 8'b00000000; b= 8'b00000000;
      #1 $display("result = %b", result);	  
 
   end 
	endmodule 