module bit4_register_tb ;
  
  reg clock ;
  reg reset ;
  reg enable ;
  reg [3:0]D;
  wire [3:0]Q;
  
  // connection joining 
  
  bit4_register dut (
    .clock(clock),
    .reset(reset),
    .enable(enable),
    .D(D),
    .Q(Q)
  );
  
    always #5 clock = ~clock ;
  
  initial begin 
     // Generate waveform
        $dumpfile("dump.vcd");
    $dumpvars(0, bit4_register_tb);
    
   // initial values 
    
    
    reset = 1 ;
    clock =0;
    enable = 0 ;
    D = 4'b0000;
    
    // keep the reset active 
    
    #10;
    
    // make reset inactive 
    reset = 0;
    
    
    // test 1 , enable =1 , load Q = 1010
    enable = 1 ;
  
     D = 4'b1010 ;
    
    #10 ;
    // test 2 , enable = 0 , hold Q = 1010 
    enable = 0 ;
    D = 4'b1111;
    #10 ;
    
    // test 3 enable = 1 , load Q = 0101 
    enable =1 ;
    D = 4'b0101;
    
    #10 ;
    
    // test 4 enable =0 , hold Q = 0101 
    enable =0 ;
    D = 4'b0000;
    #10 ;
    
    $finish ;
    
  end 
  
endmodule 
    
    
    
    
