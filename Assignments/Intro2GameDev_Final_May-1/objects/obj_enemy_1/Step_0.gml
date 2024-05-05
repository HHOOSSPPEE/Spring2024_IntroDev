CheckAnimation();

if(point_distance(x, y, obj_player.x, obj_player.y) >= obj_manager.enemy_speed_up_range)
{
	_speed = obj_manager.enemy_speed_up_speed;
}
else
{
	_speed = irandom_range(1, 2);
}

if(obj_player.state != playerState.Dead)
{
	
	var point_left = [obj_player.x - 16, obj_player.y];
	var point_right = [obj_player.x + 16, obj_player.y];
		
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
			state = enemyState.Hurt;
		}
		else
		{
			state = enemyState.Death;
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
			if (state == enemyState.Attack)
			{
				image_index = 0;
				image_speed = 0;
				attacking = true;
				StartAnimation(seq_enemy_1_attack);
			} 
			attack_cd = attack_timer;
		}

		if(attacking == false && state != enemyState.Death)
		{
			if(point_distance(x, y, attack_point[0], attack_point[1]) < attackRadius)
			{
				state = enemyState.Attack;
			}
			else if (instance_exists(obj_player))
			{
				state = enemyState.Chase;
			}
		}
	}
 

	if(state == enemyState.Chase)
	{
		image_speed = 0.25;
		sprite_index = spr_enemy_1_run;
		
		//var dir = point_direction(x, y, attack_point[0], attack_point[1]);
	
		//x += lengthdir_x(_speed , dir);
	    //y += lengthdir_y(_speed , dir);
		
		path_finding(path, _speed, attack_point[0], attack_point[1], 17);
	}
	else if(state == enemyState.Hurt)
	{
		image_speed = 0.25;
		sprite_index = spr_enemy_1_hurt;
		if(image_index == image_number -1)
		{
			hurt = false;
			state = enemyState.Chase;
		}
	}
	else if(state == enemyState.Death)
	{
		image_speed = 0.25;
		sprite_index = spr_enemy_1_death;
		if (path_exists(path))
		{
		    path_delete(path);
		}
		if(image_index == image_number -1)
		{
			image_speed = 0;
		}
		
		obj_manager.enemy_1_count -= life;
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