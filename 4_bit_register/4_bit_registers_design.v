module bit4_register( input clock , input reset ,input enable ,  input [3:0]D , output reg [3:0]Q );
  
  always @( posedge clock ) begin
    
    if ( reset) begin
      Q <= 4'b0000;
      
    end
    
    else
         if( enable) begin
        Q<=D ;
      end
   
  end
    
  
endmodule 
