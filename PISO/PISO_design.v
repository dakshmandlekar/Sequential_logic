module PISO( input clock , input reset , input load , input [3:0]D , output reg serial_out );
  
  reg [3:0]Q ;
  
  always@(posedge clock ) 
    begin 
    
    if (reset)
      Q<=4'b0000;
    
    else if (load)
      Q<=D ;
    
    else begin
      Q[3] <=1'b0 ;
                     //,/,= 1'b0;
    Q[2] <= Q[3];
    Q[1] <= Q[2];
    Q[0] <= Q[1];
    end
  end 
  
   assign serial_out = Q[0]; 
  
endmodule 
  