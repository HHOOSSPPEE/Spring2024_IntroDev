if (state == playerState.Idle)
{
	sprite_index = spr_player_idle;
	image_speed = 0.25;
}
if(state == playerState.Hurt)
{
	image_speed = 0.25;
	sprite_index = spr_player_hurt;
	if(image_index == image_number -1)
	{
		_health--;
		hurt = false;
	}
	with instance_create_layer(x, y, "Instances", obj_red)
	{
		depth = -100;
		image_alpha = 0.1;
	}
}
else
{
	if(instance_exists(obj_red))
	{
		instance_destroy(obj_red);
	}
}
if (state == playerState.Dead)
{
	image_speed = 0.25;
	sprite_index = spr_player_dead;
	if(image_index == image_number -1)
	{
		image_speed = 0;
	}
}
if (state == playerState.Run)
{
	image_speed = 0.25;
	sprite_index = spr_player_run;
}



if(!hurt)
{	
	if(move_x != 0 || move_y != 0)
	{
		state = playerState.Run;
		if(move_x != 0)
		{
			if(move_x > 0)
			{
				image_xscale = 0.8;
			}
			else if (move_x < 0)
			{
				image_xscale = -0.8;
			}
		}
	}
	else
	{
		state = playerState.Idle;
	}
	
	if(_health > 0)
	{
		move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
		move_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));
	
		move_x *= move_speed;
		move_y *= move_speed;
	
		x = clamp(x, 0 + sprite_width/2, room_width - sprite_width/2);
		y = clamp(y, 0 + sprite_height, room_height);
	
		move_and_collide(move_x, move_y, obj_block);
	}
}

if(hurt)
{
	if(_health > 0)
	{
		state = playerState.Hurt;
	}
	else
	{
		state = playerState.Dead;
	}
}