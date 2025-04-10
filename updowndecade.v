module updowndecade(
    input [1:0] m,
    input clr,
    input clk,
    output reg [3:0] q
    );
    always @(posedge clk or clr)
    begin
    case(m)
    2'b00:
    begin
    if(!clr)
    q=4'b0000;
    else
    begin
    q<=q+1;
    end
    end
    
    2'b01:
    begin
    if(!clr)
    q=4'b1111;
    else
    begin
    q<=q-1;
    end
    end
    
    2'b10:
    begin
    if(!clr)
    q=4'b0000;
    else if(q==4'b1001)
    q=4'b0000;
    else
    begin
    q<=q+1;
    end
    end
    endcase
    end
endmodule



//tb


module updowndecade_tb(

    );
    reg [1:0] m;
    reg clk,clr;
    wire[3:0]q;
    updowndecade m1(m,clr,clk,q);
    initial
    begin
    clk=1'b0;
    m=2'b00;clr=1'b0;
    #10 clr=1'b1;
    #190 m=2'b01;clr=1'b0;
    #10 clr=1'b1;
    #190 m=2'b10;clr=1'b0;
    #10 clr=1'b1;
    #120 $finish;
    
    end
    always #5 clk=~clk;
endmodule
