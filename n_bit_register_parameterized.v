module bit32_register #(
    parameter reg_width = 32
) (
    input clk,
    input [reg_width-1:0] d_in,
    output reg [reg_width-1:0] q_out
);

always @(negedge clk)
begin
    q_out <= d_in;
end
    
endmodule