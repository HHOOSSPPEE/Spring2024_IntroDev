if(point_distance(x, y, obj_player.x, obj_player.y) >= obj_manager.enemy_speed_up_range)
{
	_speed = obj_manager.enemy_speed_up_speed;
}
else
{
	_speed = irandom_range(2, 3);
}

if(obj_player.state != playerState.Dead)
{
	var point_left = [obj_player.x - attack_range, obj_player.y+5];
	var point_right = [obj_player.x + attack_range, obj_player.y+5];
		
	if(point_distance(x, y, point_left[0], point_left[1]) > 
		point_distance(x, y, point_right[0], point_right[1]))
	{
		attack_point[0] = point_right[0];
		attack_point[1] = point_right[1];
	}
	else
	{
		attack_point[0] = point_left[0];
		attack_point[1] = point_left[1];
	}
		
	if(hurt)
	{
		if(_health > 0)
		{
			state = enemy3State.Hurt;
		}
		else
		{
			state = enemy3State.Death;
		}
	}

	
	if(!hurt)
	{
		if(x < obj_player.x)
			image_xscale = 1;
		else
			image_xscale = -1;
			
		attack_cd --;
		
		if(attack_cd <= 0 &&
			point_distance(x, y, attack_point[0], attack_point[1]) < attackRadius)
		{
			image_speed = 0.25;
			state = enemy3State.Attack;
			sprite_index = spr_enemy_3_attack;
			
			if(image_index == 0)
			{
				with instance_create_layer(x + 20 * image_xscale, y - 30, "Instances", obj_enemy_3_bullet)
				{
					travel_distance = obj_enemy_3.bullet_range;
					if(obj_player.x < x)
					{
						motion_add(180, bullet_speed);
					}
					else
					{
						motion_add(0, bullet_speed);
					}
				}
			}
			
			if(image_index == image_number -1)
			{
				attack_cd = attack_timer;
			}
		}
		else if (instance_exists(obj_player))
		{
			state = enemy3State.Chase;
		}
	}
 

	if(state == enemy3State.Chase)
	{
		if(point_distance(x, y, attack_point[0], attack_point[1]) < attackRadius)
		{
			image_speed = 0;
			image_index = 0;
		}
		else
		{
			image_speed = 0.25;
			sprite_index = spr_enemy_3_run;
		}
		
		path_finding(path, _speed, attack_point[0], attack_point[1], 17);
	}
	else if(state == enemy3State.Hurt)
	{
		image_speed = 0.25;
		sprite_index = spr_enemy_3_hurt;
		if(image_index == image_number -1)
		{
			hurt = false;
			state = enemy3State.Chase;
		}
	}
	else if(state == enemy3State.Death)
	{
		if (path_exists(path))
		{
		    path_delete(path);
		}
		image_speed = 0.25;
		sprite_index = spr_enemy_3_death;
		if(image_index == image_number -1)
		{
			image_speed = 0;
		}
		obj_manager.enemy_3_count -= life;
		life -= life;
	}
}
else
{
	if (path_exists(path))
		{
		    path_delete(path);
		}
	image_speed = 0;
}



if(stuck_checker > 0)
{
	stuck_checker--;
	if(stuck_checker <=0)
	{
		if (x == starting_x)
			&& (y == starting_y)
		{
			_health = -1;	
			hurt = true;
		}
	}
}