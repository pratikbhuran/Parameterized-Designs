module mod_n_counter #(parameter n = 4,
parameter width = 2)(
   input clk,
    input rst_n,
    output reg [width-1:0] q,
    //output reg q0
);
//wire q0_out;

//asynchronous active low reset
always @ (posedge clk, negedge rst_n)
begin
    if(~rst_n)
    q <= {width{1'b0}};
    else
    begin
    //if count reaches the final value, reset output
    if (q == n-1) begin
        q <= {width{1'b0}};
    end
    else
        //increment counter
        q <= q + 1;
    end
end

// always @ * begin
//    q0 = q[0];   
// end

endmodule