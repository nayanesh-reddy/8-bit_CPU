module register(M,N,G1,G2,G3,G4,clk,D1,D2,Q1,Q2,O1,O2,Q3,Q4,E);

	input M,N,G1,G2,G3,G4,clk,E;
	input [3:0]D1;
	input [3:0]D2;
	output [3:0]O1;
	output [3:0]O2;
	output [3:0]Q1;
	output [3:0]Q2;
	output [3:0]Q3;
	output [3:0]Q4;
	
	IC74173 IC1(M,N,G1,G2,D1,Q1,clk);
	IC74173 IC2(M,N,G1,G2,D2,Q2,clk);
	
	bufif1(O1[0],Q1[0],E);
	bufif1(O1[1],Q1[1],E);
	bufif1(O1[2],Q1[2],E);
	bufif1(O1[3],Q1[3],E);
	bufif1(O2[0],Q2[0],E);
	bufif1(O2[1],Q2[1],E);
	bufif1(O2[2],Q2[2],E);
	bufif1(O2[3],Q2[3],E);
	
	IC74173 IC3(M,N,G3,G4,O1,Q3,clk);
	IC74173 IC4(M,N,G3,G4,O2,Q4,clk);
	
endmodule