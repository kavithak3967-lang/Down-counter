timescale 1ns/1ps

module down_counter_tb;

    reg clk;
    reg reset;
    reg enable;
    wire [3:0] count;

    down_counter uut (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .count(count)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        enable = 0;

        // Apply reset
        #10;
        reset = 0;
        enable = 1;

        // Allow counter to count
        #160;

        // Disable counter
        enable = 0;
        #20;

        $finish;
    end

    // Display simulation results
    initial begin
        $monitor("Time=%0t | Reset=%b | Enable=%b | Count=%d",
                 $time, reset, enable, count);
    end

endmodule