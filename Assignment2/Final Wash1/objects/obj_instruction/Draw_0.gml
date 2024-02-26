
draw_self();


if (global.show) {
    var textX = x+100;
    var textY = y +50; 
    draw_set_halign(fa_center); 
    draw_set_valign(fa_top);    
    draw_set_color(c_white);   
    
    draw_text(textX, textY, "Click to read");
}


draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black); 
