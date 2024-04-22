//display hp, net
if(room != rm_1 && room != rm_intro)
{
	draw_set_color(c_white)
	draw_text(camera_get_view_x(view_camera[0])+20, camera_get_view_y(view_camera[0])+468, "hp: "+string(obj_player.hp));
	if(obj_player.net_equipped == true)
	{
		draw_text(camera_get_view_x(view_camera[0])+100, camera_get_view_y(view_camera[0])+468, "Net Equipped. Approach ghost, press 'Space' to catch!");
	}
	if(obj_player.poisoned == true)
	{
		draw_text(camera_get_view_x(view_camera[0])+20, camera_get_view_y(view_camera[0])+436, "Poisoned.");
	}
	draw_text(camera_get_view_x(view_camera[0])+700, camera_get_view_y(view_camera[0])+468, "Exp: "+string(obj_player.exp_));
}