p1_healthX = camera_get_view_x(view_camera[0]) + 30;
p2_healthX = camera_get_view_x(view_camera[1]) + 30;
draw_set_font(fnt_main);
draw_set_halign(fa_left);
draw_set_color(c_black);


//lives and keys
if (view_current == 0)
{
	draw_sprite(spr_p1_lives, 0, p1_healthX - 30, 5);
	draw_text(p1_healthX, 10, "X " + string(global.p1_health));
	if (room == rm_main) draw_text(5, 40, "arrow keys - move \nEnter - attack\nShift - interact");
	
}
else if (view_current == 1)
{
	draw_sprite(spr_p2_lives, 0, p2_healthX - 30, 5);
	draw_text(p2_healthX, 10, "X " + string(global.p2_health));
	if (room == rm_main) draw_text(5, 40, "WASD - move \nF - attack\nG - interact");
}

