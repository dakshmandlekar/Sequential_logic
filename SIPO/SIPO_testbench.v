module SIPO_tb ;
  
  reg clock ;
  reg reset ;
  reg serial_in ;
  wire [3:0]Q;
  
  SIPO dut( 
    .clock(clock),
    .reset(reset),
    .serial_in(serial_in),
    .Q(Q)
  );
  
  
  always #5 clock = ~ clock ;
  
  initial begin 
    
    
   $dumpfile("dump.vcd");
$dumpvars(0, SIPO_tb); 
    
    
    
    
    
    // initial values 
    
    reset = 1 ;// let reset be active 
    clock = 0;
    serial_in=0;
    
    #10;
    // let reset be inactive now 
    
    reset = 0 ; 
    
    // test 1 , serial_in = 1 , 
    
    serial_in = 1 ;
    #10 ;
    
    // test 2 , 
    serial_in = 0;
    #10;
    
    // test 3 
    serial_in = 1 ;
    #10; 
    
    // test 4 
    serial_in = 1 ;
    
    #10 ;
    
    $finish ;
    
    
  end 
  
endmodule
    
    
    
  