module up_counter_tb;
  
  reg clock ;
  reg reset;
  wire [3:0]Q ;
  
  up_counter dut (
    .clock(clock),
    .reset(reset),
    .Q(Q)
  );
  
  always #5 clock = ~clock ;
  
  initial begin 
    
    // Waveform generation
        $dumpfile("dump.vcd");
    $dumpvars(0, up_counter_tb);

    
    // initial values 
    reset = 1 ;
    clock = 0 ;
    
    #10; 
    
   
    
     // Release reset
        reset = 0;

        // Let counter run
        #100;

    
    $finish ;
    
  end
endmodule 

    
  