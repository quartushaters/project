module CLKcounter(
	input wire clock,
	input wire reset,
	output reg [15:0] CLKcount,
	output reg [7:0] ProgramCounter);
	
	initial begin
		CLKcount = 0;
		ProgramCounter = 0;
	end
	
	integer i = 4;
	
	always @(posedge clock) begin
		CLKcount <= CLKcount + 1;
		
		i = i + 1;
		if (i == 5) begin
			ProgramCounter <= ProgramCounter + 4;
			i <= 0;
		end
		
		
		if(reset)begin
			CLKcount <= 0;
			ProgramCounter <= 8'B0;
		end
	end
endmodule