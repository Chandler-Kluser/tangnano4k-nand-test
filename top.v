module top (
    input key_a,
    input key_b,
    output led
);
    nand(led,key_a,key_b);
endmodule