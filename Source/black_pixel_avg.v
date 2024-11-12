`timescale 1ns / 1ps

module black_pixel_avg
(
    // Inputs
    input            hdmi_clk1x_i,     // 像素时钟
    input            lcd_hs,           // 行同步信号
    input            lcd_vs,           // 帧同步信号
    input            lcd_de,           // 像素使能信号
    input   [23:0]   lcd_data,         // RGB888信号
    input   [11:0]   lcd_xpos,         // 当前像素的x坐标
    input   [11:0]   lcd_ypos,         // 当前像素的y坐标
    
    // Outputs
    output reg [11:0] x_out,           // 黑色像素点的x坐标平均值
    output reg [11:0] y_out            // 黑色像素点的y坐标平均值
);

    // 中间信号和寄存器
    reg [31:0] x_sum;                  // 累加的黑色像素x坐标总和
    reg [31:0] y_sum;                  // 累加的黑色像素y坐标总和
    reg [31:0] black_pixel_count;      // 黑色像素点的计数

    // 检查当前像素是否为黑色（RGB888为0表示黑色）
    wire is_black_pixel = (lcd_data == 24'h000000);

    // 在每个像素时钟周期更新累加器
    always @(posedge hdmi_clk1x_i) begin
        if (!lcd_vs) begin
            // 在每帧开始时清零累加器和计数器
            x_sum <= 0;
            y_sum <= 0;
            black_pixel_count <= 0;
        end
        else if (lcd_de && is_black_pixel) begin
            // 如果当前像素是黑色，则累加其坐标并增加计数
            x_sum <= x_sum + lcd_xpos;
            y_sum <= y_sum + lcd_ypos;
            black_pixel_count <= black_pixel_count + 1;
        end
    end

    // 计算平均坐标
    always @(posedge hdmi_clk1x_i) begin
        if (!lcd_vs && black_pixel_count > 0) begin
            // 在每帧结束时（lcd_vs下降沿）计算平均值
            x_out <= x_sum / black_pixel_count;
            y_out <= y_sum / black_pixel_count;
        end
    end

endmodule
