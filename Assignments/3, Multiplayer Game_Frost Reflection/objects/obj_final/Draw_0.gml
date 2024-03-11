draw_set_font(fnt_1);
draw_set_halign(fa_center);
draw_set_color(c_dkgray);
draw_text(x, y, text[current]);

draw_set_font(fnt_2);
draw_text(x, y+150, "* Press SPACE to restart *")