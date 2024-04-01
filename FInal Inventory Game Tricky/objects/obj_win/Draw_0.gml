var centerX = room_width / 2; // 房间宽度的一半
var centerY = room_height / 2; // 房间高度的一半
var message = "You Win";

// 设置文本缩放比例
var scaleX = 2; // 水平方向放大2倍
var scaleY = 2; // 垂直方向放大2倍

// 计算放大后的文本宽度和高度，以便居中对齐
var textWidth = string_width(message) * scaleX / 2;
var textHeight = string_height(message) * scaleY / 2;

// 在屏幕中央绘制放大的文本
draw_text_transformed(centerX - textWidth, centerY - textHeight, message, scaleX, scaleY, 0);

