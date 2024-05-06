//draw menu
draw_set_halign(fa_left);

draw_set_color(c_aqua);
draw_text(x, y, "Ghost Factory");
draw_text(x, y+50, "* Press SPACE to start *");

draw_text(x, y+150, "Move with WASD keys.");
draw_text(x, y+175, "Press 'E' to open/close inventory, ’M‘ for map.");
draw_text(x, y+200, "Move mouse to select items in inventory.");
draw_text(x, y+225, "Press 'left key' to use item,'backspace' to throw away.");
draw_text(x, y+250, "Press up and down keys to reorder selected item.");