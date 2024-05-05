if(instance_exists(obj_player))
{
	var player_x = obj_player.x;
	var player_y = obj_player.y;

	var cam_x = clamp(player_x - view_w / 2, 0, room_width - view_w);
	var cam_y = clamp(player_y - view_h / 2, 0, room_height - view_h);

	camera_set_view_pos(view_camera[0], cam_x, cam_y);
}

if(!win)
{
	if(game_start)
	{
		if(level_complete)
		{
			new_level_cd--;
			if(current_level == 2)
			{
				win = true;
			}
	
			if(new_level_cd <=0)
			{
				current_level++;
		
				current_spawn = level_spawn[current_level];
	
			//enemy1 spawn
				for (var i = 0; i < current_spawn[0]; i++)
				{
					var spawn_x = irandom(tileX);
					var spawn_y = irandom(tileY);
					var player_distance = point_distance(spawn_x*tileSize, spawn_y*tileSize, obj_player.x, obj_player.y);
					var block = instance_nearest(spawn_x, spawn_y, obj_block)
				
					while(point_distance(spawn_x, spawn_y, block.x, block.y) < obj_env_generator.tileSize*2
					|| (player_distance < to_player_range))
					{
						spawn_x = irandom(tileX);
						spawn_y = irandom(tileY);
						player_distance = point_distance(spawn_x*tileSize, spawn_y*tileSize, obj_player.x, obj_player.y);	
					}
				
					if(player_distance > to_player_range)
					{
						spawn_x *= tileSize;
						spawn_y *= tileSize;
						instance_create_layer(spawn_x - 16, spawn_y+16, "Instances", obj_enemy_1);
					}
		
					enemy_1_count = current_spawn[0];
				}
		
			//enemy2 spawn
				for (var i = 0; i < current_spawn[1]; i++)
				{
					var spawn_x = irandom(tileX);
					var spawn_y = irandom(tileY);
					var player_distance = point_distance(spawn_x*tileSize, spawn_y*tileSize, obj_player.x, obj_player.y);
					var block = instance_nearest(spawn_x, spawn_y, obj_block)
				
					while(point_distance(spawn_x, spawn_y, block.x, block.y) < obj_env_generator.tileSize*2
					|| (player_distance < to_player_range))
					{
						spawn_x = irandom(tileX);
						spawn_y = irandom(tileY);
						player_distance = point_distance(spawn_x*tileSize, spawn_y*tileSize, obj_player.x, obj_player.y);	
					}
				
					if(player_distance > to_player_range)
					{
						spawn_x *= tileSize;
						spawn_y *= tileSize;
						instance_create_layer(spawn_x - 16, spawn_y+16, "Instances", obj_enemy_2);
					}
		
					enemy_2_count = current_spawn[1];
				}
		
			//enemy3 spawn
				for (var i = 0; i < current_spawn[2]; i++)
				{
					var spawn_x = irandom(tileX);
					var spawn_y = irandom(tileY);
					var player_distance = point_distance(spawn_x*tileSize, spawn_y*tileSize, obj_player.x, obj_player.y);
					var block = instance_nearest(spawn_x, spawn_y, obj_block)
				
					while(point_distance(spawn_x, spawn_y, block.x, block.y) < obj_env_generator.tileSize*2
					|| (player_distance < to_player_range))
					{
						spawn_x = irandom(tileX);
						spawn_y = irandom(tileY);
						player_distance = point_distance(spawn_x*tileSize, spawn_y*tileSize, obj_player.x, obj_player.y);	
					}
				
					if(player_distance > to_player_range)
					{
						spawn_x *= tileSize;
						spawn_y *= tileSize;
						instance_create_layer(spawn_x - 16, spawn_y + 16, "Instances", obj_enemy_3);
					}
		
					enemy_3_count = current_spawn[2];
				}
		
				level_complete = false;
				new_level_cd = new_level_timer;
			}
		}
	}
	else if (!game_start)
	{
		if(keyboard_check_pressed(vk_space))
		{
			game_start = true;
		}
	}

	if(enemy_1_count <= 0 && enemy_2_count <= 0 && enemy_3_count <= 0)
	{
		level_complete = true;
	}
}


if(obj_player.state == playerState.Dead)
{
	if(keyboard_check_pressed(vk_space))
	{
		room_restart();
	}
}