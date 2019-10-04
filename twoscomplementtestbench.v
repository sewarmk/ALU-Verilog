module twoscomplementtestbench;
reg [7:0]X;
wire [7:0]Y;
twoscomplement twoscomplement_1(Y,X); 
   initial
   begin
      //case 0
      X = 8'b00001111; 
      #1 $display("Y = %b", Y);
	  
      //case 1
		X = 8'b01001111;
      #1 $display("Y = %b", Y);
	  
 
   end


endmodule 