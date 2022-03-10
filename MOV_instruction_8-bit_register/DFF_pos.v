module DFF_pos(clkd,Dd,Qd); 

	input clkd,Dd;
	output Qd; 
	reg Qd; 
	initial Qd=0; 
	
	always @(posedge clkd)
		Qd <= Dd; 
		
endmodule