    // 设置文本颜色
    draw_set_color(c_aqua);
    // 设置文本对齐方式，这里设置为居中
    draw_set_halign(fa_center);
    // 设置文本的垂直对齐方式，这里设置为顶部对齐
    draw_set_valign(fa_top);

    // 定义文本显示的位置
    var textX = 680; // 屏幕中心
    var textY = 360; // 距离顶部100像素
 var scaleX = 1; // 水平缩放
    var scaleY = 1; // 垂直缩放
	draw_set_font(Font1)
	
	
	
var lineSpacing = 20; // Adjust line spacing to your preference
    
    var instructionText1 = "You win the game";
  


    draw_text(textX, textY, instructionText1);
	
    
  


