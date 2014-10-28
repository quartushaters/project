module MEM_WB(
	input wire [4:0] rd1,
	input wire [31:0] datain_0,
	input wire clock,
	
	output reg [4:0] rd2,
	output reg [31:0] dataout_0);	
	
	always @(posedge clock) begin
		dataout_0 = datain_0;
		rd2 = rd1;
	end
endmodule