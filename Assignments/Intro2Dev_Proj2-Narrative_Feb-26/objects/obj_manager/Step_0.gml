//camera tracking
if(instance_exists(obj_player))
{
	var player_x = obj_player.x;
	var player_y = obj_player.y;

	var cam_x = clamp(player_x - view_w / 2, 0, room_width - view_w);
	var cam_y = clamp(player_y - view_h / 2, 0, room_height - view_h);

	camera_set_view_pos(view_camera[0], cam_x, cam_y);
	
	obj_bg.x = cam_x + view_w/2;
	obj_bg.y = cam_y + view_h/2;
}

//jealousy mode
if(treasure_retrieved)
{
	if(!audio_played)
	{
		audio_play_sound(monster_scream, 1, false, 3);
		audio_played = true;
	}
	if(count == 1)
	{
		instance_create_layer(x, y, "Instances", obj_overlay);
		count--;
	}
	spawn_cd--;
	if(spawn_cd <= 0)
	{
		instance_create_layer(1056, 832, "Instances", obj_enemy);
		spawn_cd = spawn_timer;
	}
}

instruction = false;//turn off instructions