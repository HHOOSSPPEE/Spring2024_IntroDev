


    // 设置文本颜色
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
    var welcomeText = "Welcome to the game!";
    var instructionText1 = "Use W A D to move";
    var instructionText2 = "You don't want to starve, so eat fruit or hold Space to eat monsters";
    var instructionText3 = "Upper left corner is your magical shields";
	var instructionText4= "Left-click to enter the hunger mode; this will cost more energy and you can't eat monsters";
	var instructionText5="In Hunger Mode, jump twice or right-click to dash across the gap.";
	var instructionText6= "Now go to the endpoint";

if (global.playerX > 0 && global.playerX < 800) {
    
    // Draw the welcome text
    draw_text(textX, textY, welcomeText);
    
    // Draw the first line of instructions below the welcome text
    draw_text(textX, textY + lineSpacing, instructionText1);
    
    // Draw the second line of instructions below the first line
    draw_text(textX, textY + (lineSpacing * 2), instructionText2);
    
    // Draw the third line of instructions below the second line
    draw_text(textX, textY + (lineSpacing * 3), instructionText3);
}

if (global.playerX>800 && global.playerX < 1350){ 
	draw_text(textX, textY + (lineSpacing ), instructionText4);

}

if(global.playerX>1350 && global.playerX < 2700){
draw_text(textX, textY + (lineSpacing ), instructionText5);
}
if(global.playerX>2700&& global.playerX < 4500){
	draw_text(textX, textY + (lineSpacing ), instructionText6);
}

