module ring_johnson(
    input m,
    input clr,
    input clk,
    output reg [3:0] q
    );
    always @(posedge clk or clr)
    begin
    case(m)
    1'b0:
    begin
    if(!clr)
    q=4'b1000;
    else
    begin
    q[3]<=q[0];
    q[2]<=q[3];
    q[1]<=q[2];
    q[0]<=q[1];
    end
    
    end
    
    1'b1:
    begin
    if(!clr)
    q=4'b0000;
    else
    begin
    q[3]<=~q[0];
    q[2]<=q[3];
    q[1]<=q[2];
    q[0]<=q[1];
    
    end
    end
    endcase
    end
endmodule


//tb

module ringjohnson_tb(

    );
    reg clk,clr,m;
    wire [3:0] q;
    ring_johnson r1(m,clr,clk,q);
    
    initial
    begin
        clk=1'b0;
        m=1'b0;clr=1'b0;
        #10 clr=1'b1;
        # 100 m=1'b1;clr=1'b0;
        #10 clr=1'b1;
        #100 $finish;
    end
    always #5 clk=~clk;
    
endmodule
