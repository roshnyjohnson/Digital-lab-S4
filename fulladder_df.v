module fulladder_df(
    input a,
    input b,
    input cin,
    output s,
    output c
    );
    assign s=(a^b^cin);
    assign c=a&b|a&cin|b&cin ;
endmodule


//testbench

module fulladder_df_tb(

    );
    reg a,b,cin;
    wire s,c;
    fulladder_df d1(a,b,cin,s,c);
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
