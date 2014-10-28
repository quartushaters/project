module ALU(
	input wire [31:0] data0,
	input wire [31:0] data1,
	output reg [31:0] out0,
	output reg [31:0] out1);
	
	always @* begin
		out0 = data0 + data1;
		out1 = data0 + data1;	
	end

endmodule