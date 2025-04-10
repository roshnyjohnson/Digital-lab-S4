module half_adder1(
    input a,
    input b,
    output sum,
    output carry
    );
    
    assign sum = a ^ b;    // XOR for sum
    assign carry = a & b;  // AND for carry

endmodule