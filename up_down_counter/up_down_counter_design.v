module up_down_counter( input clock , input reset , input direction , output reg [3:0]Q ) ; 
  
  always @ ( posedge clock ) begin 
    
    if( reset) begin 
      Q <= 4'b0000;
   
   
    end
    
         else if ( direction) 
            Q <= Q+ 1'b1 ;
             else 
                 Q <= Q - 1'b1 ; 
      
    end   
  
     endmodule 