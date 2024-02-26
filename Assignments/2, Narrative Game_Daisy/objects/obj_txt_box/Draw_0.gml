//display text
draw_set_halign(fa_left);
draw_set_font(font_2);
draw_sprite(spr_txt_box, 0, x, y);
draw_text_ext(x, y, text, string_height(text), sprite_width);