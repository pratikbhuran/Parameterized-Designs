module param_up_down_counter #(parameter up_down = 1,parameter bit_size = 3) 
(input clk,
input rst_n,
input en_in,
output reg [bit_size-1:0] q_out);

always @(posedge clk,negedge rst_n ) 
begin
    if (~rst_n)
        q_out<={bit_size{1'b0}};
    else 
        if (en_in)
        begin
        if (up_down) 
            q_out<=q_out+1;
        else 
            q_out<=q_out-1;
        end
  
end
    
endmodule