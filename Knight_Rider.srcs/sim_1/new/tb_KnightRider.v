`timescale 1ns / 1ps

module tb_KnightRider();

    reg clock;reg rst;
    wire [7:0] led;
    
    KnightRider KnightRider1(
	.clk(clock),
	.rst(rst),
	.LED(led)
);
    
    always #5 clock = !clock;
    
    initial begin
        clock = 0;
        rst = 0;
        #50
        rst = 1;
        #20
        rst = 0;
    end
endmodule   
