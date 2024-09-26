CheckAnimation();

if(point_distance(x, y, obj_player.x, obj_player.y) >= obj_manager.enemy_speed_up_range)
{
	_speed = obj_manager.enemy_speed_up_speed;
}
else
{
	_speed = irandom_range(2, 3.5);
}

if(obj_player.state != playerState.Dead)
{
	
	var point_left = [obj_player.x - 16, obj_player.y-1];
	var point_right = [obj_player.x + 16, obj_player.y-1];
		
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
			state = enemy2State.Hurt;
		}
		else
		{
			state = enemy2State.Death;
		}
	}

	if(!enabled) exit;
	
	if(!hurt)
	{
		if(x < obj_player.x)
			image_xscale = 1;
		else
			image_xscale = -1;
			
		attack_cd --;
		if(attack_cd <= 0)
		{
			if (state == enemy2State.Attack)
			{
				image_index = 0;
				image_speed = 0;
				attacking = true;
				StartAnimation(seq_enemy_2_attack);
			} 
			attack_cd = attack_timer;
		}

		if(attacking == false && state != enemy2State.Death)
		{
			if(point_distance(x, y, attack_point[0], attack_point[1]) < attackRadius)
			{
				state = enemy2State.Attack;
			}
			else if (instance_exists(obj_player))
			{
				state = enemy2State.Chase;
			}
		}
	}
 

	if(state == enemy2State.Chase)
	{
		image_speed = 0.5;
		sprite_index = spr_enemy_2_run;
		
		path_finding(path, _speed, attack_point[0], attack_point[1], 17);
	}
	else if(state == enemy2State.Hurt)
	{
		image_speed = 0.25;
		sprite_index = spr_enemy_2_hurt;
		if(image_index == image_number -1)
		{
			hurt = false;
			state = enemy2State.Chase;
		}
	}
	else if(state == enemy2State.Death)
	{
		if (path_exists(path))
		{
		    path_delete(path);
		}
		image_speed = 0.25;
		sprite_index = spr_enemy_2_death;
		if(image_index == image_number -1)
		{
			image_speed = 0;
		}
		obj_manager.enemy_2_count -= life;
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