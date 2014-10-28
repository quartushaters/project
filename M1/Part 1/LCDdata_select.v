module LCDdata_select(
	input wire [16:0] SW,
	input wire [31:0] REGout,
	input wire [31:0] DATAout,
	input wire [31:0] INSTRout,
	
	output reg [7:0] LCDdataHEX,
	output reg [31:0] LCDdata);	
	
	always @* begin
		if (SW[16] == 0 && SW[15] == 0) begin//00
			LCDdataHEX[7:4] = SW[4];
			LCDdataHEX[3:0] = SW[3:0];
			LCDdata[31:0] = REGout[31:0];
		end
		if (SW[16] == 0 && SW[15] == 1) begin//01
			LCDdataHEX[7:4] = SW[9];
			LCDdataHEX[3:0] = SW[8:5];
			LCDdata[31:0] = DATAout[31:0];
		end
		if (SW[16] == 1 && SW[15] == 0) begin//10
			LCDdataHEX[7:4] = SW[14];
			LCDdataHEX[3:0] = SW[13:10];
			LCDdata[31:0] = INSTRout[31:0];
		end
	end
endmodule