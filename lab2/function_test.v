`timescale 1ns / 1ps

module fun_test;
    reg clk_reg, start, in_rst;
    reg [7:0] in_a;
    reg [7:0] in_b;
    wire [11:0] out;
    wire out_busy;
    reg [3:0] count;

    fun ab_inst(
        .clk_i(clk_reg),
        .rst_i(in_rst),
        .a_i(in_a),
        .b_i(in_b),
        .start_i(start),
        .y_bo(out),
        .busy_o(out_busy)
    );

    initial begin
        clk_reg = 1;
        forever
            #1
            clk_reg = ~clk_reg;
    end

    initial begin
        in_rst = 'd1;
        start = 'd0;
        count = 'd0;
        #1
        in_rst = 'd0;
        forever
            #1
            if (~out_busy && ~start && count == 0) begin//8(0x8)
                in_a = 'd1;
                in_b = 'd64;
                start = 1;
                #1
                start = 0;
                count = count + 1;
             end else if (~out_busy && ~start && count == 1) begin//10(0xa)
                in_a = 'd2;
                in_b = 'd25;
                start = 1;
                #2
                start = 0;
                count = count + 1;
             end else if (~out_busy && ~start && count == 2) begin//6(0x6)
                in_a = 'd3;
                in_b = 'd4;
                start = 1;
                #2
                start = 0;
                count = count + 1;
             end else if (~out_busy && ~start && count == 3) begin//0(0x0)
                in_a = 'd3;
                in_b = 'd0;
                start = 1;
                #2
                start = 0;
                count = count + 1;
             end else if (~out_busy && ~start && count == 4) begin//5(0x5)
                in_a = 'd5;
                in_b = 'd1;
                start = 1;
                #2
                start = 0;
                count = count + 1;
             end else if (~out_busy && ~start && count == 5) begin//66(0x42)
                in_a = 'd6;
                in_b = 'd121;
                start = 1;
                #2
                start = 0;
                count = count + 1;
             end else if (~out_busy && ~start && count == 6) begin//800(0x320)
                in_a = 'd100;
                in_b = 'd65;
                start = 1;
                #2
                start = 0;
                count = count + 1;
             end else if (~out_busy && ~start && count == 7) begin//700(0x2bc)
                in_a = 'd100;
                in_b = 'd63;
                start = 1;
                #2
                start = 0;
                count = count + 1;
             end else if (~out_busy && ~start && count == 8) begin//30(0x1e)
                in_a = 'd10;
                in_b = 'd9;
                start = 1;
                #2
                start = 0;
                count = count + 1;
             end else if (~out_busy && ~start && count == 9) begin//3(0x3)
                in_a = 'd1;
                in_b = 'd10;
                start = 1;
                #2
                start = 0;
                count = count + 1;
             end else if (~out_busy && ~start && count == 10) begin//0(0x0)
                in_a = 'd0;
                in_b = 'd0;
                start = 1;
                #2
                start = 0;
                count = count + 1;
            end else if (~out_busy && ~start && count == 11) begin//3825(0xef1)
                in_a = 'd255;
                in_b = 'd255;
                start = 1;
                #2
                start = 0;
                count = count + 1;
            end
    end
endmodule