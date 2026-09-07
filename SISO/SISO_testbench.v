module SISO_tb ;
  reg clock;
  reg reset ;
  reg serial_in;
  wire [3:0]Q ;
  
  SISO dut( 
    .clock(clock),
    .reset(reset),
    .serial_in(serial_in),
    .Q(Q)
  );
  
  always #5 clock = ~clock;
  
  initial begin 
    
    $dumpfile("dump.vcd");
$dumpvars(0, SISO_tb);
   // initial values 
    
    reset = 1 ;//let reset be active 
   
    clock =0 ; 
    serial_in = 0 ;
  
    
    #10 ;
    
   // lets deactive reset now  
    reset = 0 ;
    
    
    // test 1  , serial_in = 1 , Q = 1000 
    
   serial_in = 1 ;
    #10;
    
    // test 2 , serial_in = 0 , Q = 0100 
    serial_in = 0 ;
    #10 ;
    
    // test 3 , serial_in = 1 , Q = 1010 
    serial_in= 1 ;
    #10;
    
    // test 4 , serial_in = 0 , Q = 0101
    
    serial_in = 0 ; 
    #10;
    
    
    $finish ; 
    
  end 
endmodule 

