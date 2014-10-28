module CLKinstr(
	input wire [31:0] datain,
	input wire clock,
	output reg [31:0] dataout);
	
	always @(posedge clock) begin
		dataout = datain;			
	end

endmodule