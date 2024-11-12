module zone_identifier (
    input  [11:0] x_avg_black,    // 黑色像素的x坐标平均值
    input  [11:0] y_avg_black,    // 黑色像素的y坐标平均值
    output reg [2:0] zone         // 输出区域编号，3位二进制
);

// 屏幕宽度和高度
localparam SCREEN_WIDTH = 1280;
localparam SCREEN_HEIGHT = 720;

// 区域划分边界
localparam WIDTH_DIVISION = SCREEN_WIDTH / 4;  // 每列的宽度
localparam HEIGHT_DIVISION = SCREEN_HEIGHT / 2;  // 每行的高度

always @(*) begin
    // 默认值
    zone = 3'b000;

    // 根据x_avg_black和y_avg_black计算zone编号
    if (x_avg_black < WIDTH_DIVISION) begin
        if (y_avg_black < HEIGHT_DIVISION) zone = 3'b000; // 区域1
        else                               zone = 3'b100; // 区域5
    end else if (x_avg_black < 2 * WIDTH_DIVISION) begin
        if (y_avg_black < HEIGHT_DIVISION) zone = 3'b001; // 区域2
        else                               zone = 3'b101; // 区域6
    end else if (x_avg_black < 3 * WIDTH_DIVISION) begin
        if (y_avg_black < HEIGHT_DIVISION) zone = 3'b010; // 区域3
        else                               zone = 3'b110; // 区域7
    end else begin
        if (y_avg_black < HEIGHT_DIVISION) zone = 3'b011; // 区域4
        else                               zone = 3'b111; // 区域8
    end
end

endmodule
