module Binary_Image (
    input               clk,
    input               rst_n,
    input               vsync_in,
    input               href_in,
    input       [31:0]  gray_data_in,
    output reg          vsync_out,
    output reg          href_out,
    output reg  [31:0]  binary_data_out
);
    parameter THRESHOLD = 128;  // 二值化阈值

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            vsync_out <= 0;
            href_out  <= 0;
            binary_data_out <= 0;
        end else begin
            vsync_out <= vsync_in;
            href_out  <= href_in;
            // 对frame的三个颜色通道进行平均，然后使用阈值进行二值化处理
            if ((gray_data_in[31:24] + gray_data_in[23:16] + gray_data_in[15:8]) / 3 > THRESHOLD)
                binary_data_out <= 32'hFFFFFFFF;
            else
                binary_data_out <= 32'h00000000;
        end
    end
endmodule
