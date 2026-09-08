module down_counter_tb ;
  
  reg clock ;
  reg reset ; 
  wire [3:0]Q ;
  
  
  down_counter dut (
    .clock(clock) ,
    .reset(reset),
    .Q(Q) 
  );
  
  
  always #5 clock = ~clock ;
  
  initial begin 
    // wave generation 
    
    $dumpfile("dump.vcd");
$dumpvars(0, down_counter_tb);
    
    // initial value 
    
    // keep the reset active 
    reset = 1 ; 
    clock = 0 ;
    
    #10 ; 
    // reset deactivate
    reset = 0 ;
     
    // let counter run 	
    #10 ;
    #10 ;
    
    #10;
    #10;
    #50;
    #60;
    
    $finish ;
    
  end 
endmodule 
    