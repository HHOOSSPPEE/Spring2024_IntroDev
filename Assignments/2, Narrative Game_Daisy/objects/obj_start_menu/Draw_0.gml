//display name and instruction of the game
draw_set_halign(fa_center);
draw_set_font(font_1);
draw_text(x, y, "Daisy");

draw_set_font(font_2);
draw_text(x, y+200, "* Press SPACE to start *");
draw_text(x, y+400, "Move with WASD keys. Click on items to pick up.");
draw_text(x, y+450, "Press 'p' to pause background music, 'r' to resume.");