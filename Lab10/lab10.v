module lab10 (input clk, input reset, input Din, output [3:0] Q);

D_FF dff_ins0 (
    .D(Din),
    .clk(clk),
    .reset(reset),
    .Q(Q[0])
);
D_FF dff_ins1 (
    .D(Q[0]),
    .clk(clk),
    .reset(reset),
    .Q(Q[1])
);
D_FF dff_ins2 (
    .D(Q[1]),
    .clk(clk),
    .reset(reset),
    .Q(Q[2])
);
D_FF dff_ins3 (
    .D(Q[2]),
    .clk(clk),
    .reset(reset),
    .Q(Q[3])
);


endmodule