draw_sprite(spr_textbox, 0, x, y);

draw_set_font(fnt_text);
draw_set_color(c_black)

draw_text_ext(x + 4, y + 4, text, string_height(text), sprite_width - 4);