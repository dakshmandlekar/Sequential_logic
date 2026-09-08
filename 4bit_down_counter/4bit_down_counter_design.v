module down_counter( input clock , input reset , output reg [3:0]Q );
  
  always@ ( posedge clock) begin 
    
    if ( reset)
      Q<= 4'b1111;
    
    else 
      Q<= Q - 1'b1;
    
  end 
  
endmodule 