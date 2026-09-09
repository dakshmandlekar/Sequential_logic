module john_counter_tb ;
  
  
  reg clock ;
  reg reset ; 
  
  wire [3:0]Q ;
  
  john_counter dut(
    .clock(clock),
    .reset(reset),
    .Q(Q) 
  );
  
  
  
  always #5 clock = ~clock ;
  
  initial begin 
    
    
    $dumpfile("dump.vcd");
    $dumpvars(0, john_counter_tb);
    
    // initial values 
    
    reset = 1 ;
    clock =0 ;
    
    #10 ; 
    
    // deactivate reset 
    
    reset = 0 ; 
    
    
    #100 ;
    
    
    $finish ;
    
    
  end 
  
endmodule 