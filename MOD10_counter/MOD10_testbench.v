module MOD10_counter_tb;

    reg clock;
    reg reset;
    wire [3:0] Q;

    // Instantiate DUT
    MOD10_counter dut (
        .clock(clock),
        .reset(reset),
        .Q(Q)
    );

    // Clock generation
    always #5 clock = ~clock;

    initial begin

        // Waveform generation
        $dumpfile("dump.vcd");
        $dumpvars(0, MOD10_counter_tb);

        // Initial values
        clock = 0;
        reset = 1;

        // Keep reset active
        #10;

        // Release reset
        reset = 0;

        // Let counter run
        #110;

        $finish;

    end

endmodule