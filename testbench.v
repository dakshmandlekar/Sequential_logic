module counter_4bit_tb;
  
  reg clock;
  reg reset ;
  
  wire [3:0]Q;
  
  counter_4bit dut( 
    .clock(clock),
    .reset(reset),
    .Q(Q)
    
  );
  
  always #5 clock = ~clock ; // clock generation 
    
    initial begin // test sequence 
      
     $dumpfile("dump.vcd");
  $dumpvars(0, counter_4bit_tb); // generate waveform 
  
  clock =0; //initially
  reset =1 ; // q= 0000;
  
  #10 // after 10 time units 
  
  reset = 0 ;
  
  #100 // lets run the counter
  
      $finish;
  
  end 
endmodule 
    
    
  
  