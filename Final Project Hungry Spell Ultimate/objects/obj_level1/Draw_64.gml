 draw_set_color(c_black);
    // 设置文本对齐方式，这里设置为居中
    draw_set_halign(fa_center);
    // 设置文本的垂直对齐方式，这里设置为顶部对齐
    draw_set_valign(fa_top);

    // 定义文本显示的位置
    var textX = 400; // 屏幕中心
    var textY = 100; // 距离顶部100像素
 var scaleX = 1; // 水平缩放
    var scaleY = 1; // 垂直缩放
	draw_set_font(Font1)
	
	
	
var lineSpacing = 20; // Adjust line spacing to your preference
var instructionText1="Welcome to Level 1";
var instructionText2="Now go to the endpoint";



if (global.playerX>0 && global.playerX < 850){ 
	draw_text(textX, textY, instructionText1);
	draw_text(textX, textY+lineSpacing, instructionText2);
}

