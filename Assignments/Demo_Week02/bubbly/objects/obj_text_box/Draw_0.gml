draw_sprite(spr_text_box,0,x,y)

draw_set_color(#7CABB2);
//height_needed = string_width_ext(text, 1, sprite_width);
//width_needed = string_height_ext(text, 1, sprite_height);

//if(height_needed<sprite_height && 
//width_needed<sprite_width){
//draw_text_ext(x+5,y+5,text,3,sprite_width);
draw_text_transformed(x+5, y+5, text, .30, .30, 0);
//}
