module D_FF(input D, input clk, input reset, output reg Q);
always @(posedge clk or posedge reset) 
begin
    if (reset) 
    begin
        Q = 1'b0;
    end
    else
    begin
        Q = D; 
    end 
end
endmodule