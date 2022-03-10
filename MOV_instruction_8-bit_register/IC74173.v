module IC74173(M,N,G1,G2,D,Q,clk);

	input M,N,G1,G2,clk;
	input [3:0]D;
	output [3:0]Q;
	wire [3:0]O;
	wire DE,OC;
	
	assign DE = (G1 & G2);
	
	DFF_pos dff1(clk,((DE & D[0]) | (~DE & O[0])),O[0]);
	DFF_pos dff2(clk,((DE & D[1]) | (~DE & O[1])),O[1]);
	DFF_pos dff3(clk,((DE & D[2]) | (~DE & O[2])),O[2]);
	DFF_pos dff4(clk,((DE & D[3]) | (~DE & O[3])),O[3]);
	
	assign OC = (M & N);
	
	bufif1(Q[0],O[0],OC);
	bufif1(Q[1],O[1],OC);
	bufif1(Q[2],O[2],OC);
	bufif1(Q[3],O[3],OC);
	
endmodule