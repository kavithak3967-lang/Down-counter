module down_counter (
    input  wire       clk,
    input  wire       reset,
    input  wire       enable,
    output reg  [3:0] count
);

always @(posedge clk) begin
    if (reset)
        count <= 4'b1111;
    else if (enable)
        count <= count - 1'b1;
end

endmodule

