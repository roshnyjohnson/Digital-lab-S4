module demux_df(
    input i,
    input [1:0] s,
    output [3:0] y
    );
    assign y[3]=(s==2'b00) ? i:1'b0;
    assign y[2]=(s==2'b01) ? i:1'b0;
    assign y[1]=(s==2'b10) ? i:1'b0;
    assign y[0]=(s==2'b11) ? i:1'b0;
    
    
endmodule


//tb
module demux_df_tb(

    );
    reg [1:0] s;
    reg i;
    wire [3:0] y;
    demux_df d1(i,s,y);
    initial
    begin
   // demux_beh d1(i,s,y);
    s=2'b00;i=1'b1;
    #10 s=2'b01;i=1'b1;
    #10 s=2'b10;i=1'b1;
    #10 s=2'b11;i=1'b1;
    #10 $finish;
    end
endmodule
