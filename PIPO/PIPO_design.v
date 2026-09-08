module PIPO( input clock , input reset , input load , input [3:0]D , output reg [3:0] Q );
  
  always @ ( posedge clock) begin 
    
    if ( reset )
      Q<= 4'b0000;
    
    else 
      if( load) begin
        
        
        Q <=D;
      //  Q[0] <= D[0];
       // Q[1] <= D[1];
      //  Q[2] <= D[2];
       /// Q[3] <= D[3] ;
        
      end 
  end 
endmodule 
