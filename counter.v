///////////////////////////////////////////////////////////
//														 //
//														 //
//		file: counter.sv								 //
//														 //
//		desc: generated 8 bit counter for synth test	 //
//														 //
//														 //
///////////////////////////////////////////////////////////

module counter (
    input  wire       clk,
    input  wire       rst,
    input  wire       enable,
    output reg  [7:0] count,
    output wire       max_hit
);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            count <= 8'h00;
        end else if (enable) begin
            count <= count + 1'b1;
        end
    end

    assign max_hit = (count == 8'hFF);

endmodule
