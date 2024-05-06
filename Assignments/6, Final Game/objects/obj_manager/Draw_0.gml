//display hp, net
if(room != rm_1 && room != rm_intro && room != rm_4)
{
	draw_set_color(c_white)
	
	//display hp and level
	draw_text(camera_get_view_x(view_camera[0])+20, camera_get_view_y(view_camera[0])+468, "hp: "+string(obj_player.hp));
	draw_text(camera_get_view_x(view_camera[0])+700, camera_get_view_y(view_camera[0])+24, "Level "+string(obj_player.lvl));
	
	//display net 
	if(room != rm_3 && obj_player.net_equipped == true)
	{
		draw_text(camera_get_view_x(view_camera[0])+100, camera_get_view_y(view_camera[0])+468, "Net Equipped. Approach ghost, press 'Space' to catch!");
	}
	if(room == rm_3 && obj_player.net_equipped == true)
	{
		draw_text(camera_get_view_x(view_camera[0])+100, camera_get_view_y(view_camera[0])+468, "Net Equipped. Approach boss, press 'Space' to attack!");
	}
	
	//display boss hp
	if(room == rm_3)
	{
		draw_text(camera_get_view_x(view_camera[0])+200, camera_get_view_y(view_camera[0])+24, "Boss hp: "+string(obj_boss.hp));
	}
	
	//display poison
	if(obj_player.poisoned == true)
	{
		draw_text(camera_get_view_x(view_camera[0])+20, camera_get_view_y(view_camera[0])+436, "Poisoned.");
	}
	draw_text(camera_get_view_x(view_camera[0])+700, camera_get_view_y(view_camera[0])+468, "Exp: "+string(obj_player.exp_));
	
	//display super power
	if(obj_player.lvl == 3 && obj_player.power_ready == false)
	{
		draw_text(camera_get_view_x(view_camera[0])+650, camera_get_view_y(view_camera[0])+444, "Super Power: "+string(obj_player.power_));
	}
	if(obj_player.lvl == 3 && obj_player.power_ready == true)
	{
		draw_text(camera_get_view_x(view_camera[0])+600, camera_get_view_y(view_camera[0])+444, "Super Power Ready!");
	}
}
