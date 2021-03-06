`timescale 1ns / 1ps

module edge_detect
#(
	parameter N = 8
)
(
 	input			clk,
	input [N-1:0]	din,
	output			edge_detected
);

	reg [N-1:0]		tmp				= 0;
	reg				edge_detected_i = 0;

	assign edge_detected = edge_detected_i;

	always @ (posedge clk)
	begin
		tmp <= din;

		if (tmp != din)
			edge_detected_i <= 1'b1;
		else
			edge_detected_i <= 1'b0;
	end

endmodule
