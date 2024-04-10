draw_self();
angle = point_direction(x, y, mouse_x, mouse_y);
draw_sprite_ext(equipment.sprite, 0, x, y, 1, 1, angle, c_white, 1);
