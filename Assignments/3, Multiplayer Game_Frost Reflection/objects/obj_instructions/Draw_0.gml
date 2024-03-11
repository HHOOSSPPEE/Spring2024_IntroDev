//display instructions of the game
draw_set_halign(fa_center);
draw_set_color(c_dkgray);
draw_set_font(fnt_2);

draw_text(x, y, "* Press SPACE to start *");

draw_text(x, y+120, "Move fox with left&right arrow keys. Move the reflection with A&D keys.");
draw_text(x, y+170, "Jump using up / S key. Get close to pick up mirror fragments.");
draw_text(x, y+220, "Good luck.");