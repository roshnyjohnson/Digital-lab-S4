module fulladder_beh(
    input a,
    input b,
    input cin,
    output reg s,
    output reg c
    );
    always @ (a or b or cin)begin
    {c,s} = a + b + cin;
    end
endmodule


//testbench
module fulladder_beh_tb(

    );
    reg a,b,cin;
    wire s,c;
    fulladder_beh b1(a,b,cin,s,c);
    initial
    begin
    a=1'b0;b=1'b0;cin=1'b0;
    #10 a=1'b0;b=1'b0;cin=1'b1;
    #10 a=1'b0;b=1'b1;cin=1'b0;
    #10 a=1'b0;b=1'b1;cin=1'b1;
    #10 a=1'b1;b=1'b0;cin=1'b0;
    #10 a=1'b1;b=1'b0;cin=1'b1;
    #10 a=1'b1;b=1'b1;cin=1'b0;
    #10 a=1'b1;b=1'b1;cin=1'b1;
    #10 $finish;
    end
endmodule
