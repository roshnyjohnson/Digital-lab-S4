module demux_beh(
    input i,
    input [1:0] s,
    output reg [3:0] y
    );
    always@(*)
    begin
    case(s)
    2'b00:y=4'b1000;
    2'b01:y=4'b0100;
    2'b10:y=4'b0010;
    2'b11:y=4'b0001;
    //default: y=4'b0000;
    endcase
    end
endmodule


//tb
module demux_beh_tb(

    );
    reg [1:0] s;
    reg i;
    wire [3:0] y;
    demux_beh d1(i,s,y);
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
