draw_set_halign(fa_center)

draw_sprite(spr_textbox, 0, x, y);

draw_set_font(fnt_main);

draw_text_ext(x + 4, y + 4, text, string_height(text), sprite_width - 4);