module EX_MEM(
	input wire [4:0] rd0,
	input wire [31:0] datain_0,
	input wire [31:0] datain_1,
	input wire clock,
	
	output reg [4:0] rd1,
	output reg [31:0] dataout_0,
	output reg [31:0] dataout_1);	
	
	always @(posedge clock) begin
		dataout_0 = datain_0;
		dataout_1 = datain_1;
		rd1 = rd0;
	end
endmodule