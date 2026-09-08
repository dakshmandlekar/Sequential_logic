module up_down_counter_tb ;
  
  reg clock ;
  reg reset ; 
  reg direction ;
  wire [3:0]Q ;
  
  up_down_counter dut (
    
    .clock(clock),
    .reset(reset) ,
    .Q(Q),
    .direction(direction)
  );
  
  always #5 clock = ~clock ; 

  initial begin 
    
    
    // wave generation 
    
     $dumpfile("dump.vcd");
    $dumpvars(0, up_down_counter_tb);

    
    // initial value given 
    
    reset = 1 ; 
    clock =0 ;
     
    #10 ;
    
    reset = 0 ;
    direction = 1 ; // 0001
    
    #10 
    
    reset = 0 ;
    direction = 0 ; // 0000
    
    #10 
    reset = 0 ;
    
    direction = 1 ; // 0001
    
    
    #10 
    reset = 0 ;
    direction = 1 ; // 0010
    
    
    
     #10 ;
    
    $finish ;
    
  end 
  
endmodule 
    