module shiftlefttestbench;
reg [7:0] a;
wire [7:0]result;

shiftleft shiftleft_1(result,a);

   initial
   begin
      //case 0
      a = 8'b00101111;
      #1 $display("result = %b", result);
	  
      //case 1
		a = 8'b10000010;
      #1 $display("result = %b", result);
      //case 3
		a = 8'b00000001;
      #1 $display("result = %b", result);	  
 
   end 
	endmodule 

 