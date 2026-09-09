module john_counter ( input clock , input reset , output reg [3:0]Q );
  
   
     
    always @(posedge clock) begin

        if (reset)
            Q <= 4'b0000;

        else begin
          Q[3] <= ~ Q[0];
            Q[2] <= Q[3];
            Q[1] <= Q[2];
            Q[0] <= Q[1];
        end

    end

endmodule