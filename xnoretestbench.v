module xnortestbench;
   reg [7:0]X;
   reg [7:0]Y;
   wire[7:0]Z;



xnorgate xnorgate_1(Z, X,Y);
   
   initial
   begin
      //case 0
      X = 8'b00001111; Y= 8'b11011100;
      #1 $display("Z = %b", Z);
	  
      //case 1
		X = 8'b11001111; Y= 8'b10011100;
      #1 $display("Z = %b", Z);
	  
 
   end
endmodule