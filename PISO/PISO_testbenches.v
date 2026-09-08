module PISO_tb;

    reg clock;
    reg reset;
    reg load;
    reg [3:0] D;

    wire serial_out;

    // DUT
    PISO dut (
        .clock(clock),
        .reset(reset),
        .load(load),
        .D(D),
        .serial_out(serial_out)
    );

    // Clock generation
    always #5 clock = ~clock;

    initial begin

        // Waveform generation
        $dumpfile("dump.vcd");
        $dumpvars(0, PISO_tb);

        // Initial values
        clock = 0;
        reset = 1;
        load = 0;
        D = 4'b0000;

        // Reset
        #10;
        reset = 0;

      // case 1 
        D = 4'b1010;
        load = 1;
        #10;

     // case 2 
        load = 0;
      #10;
      
      // case 3 
      load = 1 ; 
      D = 0101;
      #10;
      // case 4 
      load = 0 ;
      D = 4'b1111;
      #10;

        $finish;

    end

endmodule
