module PIPO_tb;
  
  reg clock ;
  reg reset ; 
  reg load ;
  reg [3:0]D;
  wire [3:0]Q ;
  
  
  PIPO dut (
    .clock(clock),
    .reset(reset),
    .load(load),
    .D(D),
    .Q(Q)
  );
  
  always #5 clock = ~clock ;
  
  initial begin 
    
    
     // Waveform generation
        $dumpfile("dump.vcd");
        $dumpvars(0, PIPO_tb);
    
    
    // initial values
    // activate reset 
    reset = 1 ;
    clock =0;
    load = 0 ;
    D = 4'b0000;
    
    
    #10 ;
    reset = 0 ;
    
    // deactivate reset
    // case 1 
    load = 1 ;
    D = 4'b1010;
    
    #10 ;
    
    //case 2 
    load = 1 ;
    D = 4'b1100;
    #10 ;
    
    // case 3 
     load = 1 ;
     D = 4'b0101;
    #10 ;
    
    
    $finish ;
    
  end 
endmodule 
    
    