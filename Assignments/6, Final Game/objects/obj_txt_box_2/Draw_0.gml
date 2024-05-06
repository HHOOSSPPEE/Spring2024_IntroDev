//display text
draw_set_halign(fa_left);
draw_set_color(c_aqua);
draw_sprite(spr_text_box, 0, x, y);
draw_text_ext(x, y, text, string_height(text), sprite_width);