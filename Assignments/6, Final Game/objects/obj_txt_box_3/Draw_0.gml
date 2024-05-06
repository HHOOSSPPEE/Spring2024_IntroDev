//display text
draw_set_halign(fa_center);
draw_set_color(c_aqua);
draw_set_font(fnt_1);
draw_sprite(spr_text_box, 0, x, y);
draw_text_ext(x, y, text, string_height(text), sprite_width);