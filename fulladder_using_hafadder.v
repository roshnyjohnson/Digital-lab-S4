module full_adder1(
    input a,
    input b,
    input cin,
    output s,
    output c
    );
    wire c1,c2,s1;
    half_adder1 h1(a,b,s1,c1);
    half_adder1 h2(s1,cin,s,c2);
    or o1(c,c1,c2);
endmodule

//tb


module full_adder1_tb(

    );
    reg a,b,cin;
    wire s,c;
    full_adder1 f1(a,b,cin,s,c);
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
