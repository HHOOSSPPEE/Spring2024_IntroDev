// 标题文本和指令
var title = "Tricky Cube";
var instructions = "WASD to move\nQ to pick up or remove\nSpace to show the inventory\n\nClick to play"; // 注意这里直接在字符串中增加了额外的换行

// 
var titleX = room_width / 2;
var titleY = 100; // 
var titleScale = 2; // 

// 
var instructionX = room_width / 2;
var instructionY = titleY + 60; //
var instructionScale = 1; 

// 
draw_set_color(c_white);

// 
draw_set_halign(fa_center); //
draw_text_transformed(titleX, titleY, title, titleScale, titleScale, 0);

// 
var lines = string_split(instructions, "\n");
for (var i = 0; i < array_length_1d(lines); i++) {
    var line = lines[i];
    var lineY = instructionY + (i * 20 * instructionScale); // 
    draw_text_transformed(instructionX, lineY, line, instructionScale, instructionScale, 0);
}

// 恢复绘制设置
draw_set_halign(fa_left); // 









