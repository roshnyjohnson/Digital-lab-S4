module mux_beha(
    input [3:0] d,
    input [1:0] s,
    output reg y
    );
    always @(*)
    begin
        y=d[s];
    end
endmodule



//tbmodule mux_beha_tb(

    );
    reg [3:0]d;
    reg [1:0]s;
    wire y;
    mux_beha m1(d,s,y);
    initial
    begin
     s=2'b00;d=4'b0001;
    #10 s=2'b01;d=4'b0010;
    #10 s=2'b10;d=4'b0100;
    #10 s=2'b11;d=4'b0100;
    #10 $finish;
    end
endmodule
