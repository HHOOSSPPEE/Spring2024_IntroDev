/// @description Insert description here
// You can write your code in this editor

image_xscale = image_dir;//from gun direction

//movement input
if(!_health <= 0)
{
	if(!hurt || !conversation)
	{
		move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
		move_x *= move_speed;

		if (place_meeting(x, y+2, obj_manager.collidables))
		{
			move_y = 0;
			if (keyboard_check(vk_space)) move_y = -jump_speed;
		}
		else if (move_y < 10) move_y += grv;
	}
}

//position claming
x = clamp(x, 0 + sprite_width/2, room_width - sprite_width/2);
y = clamp(y, 0 + sprite_height, room_height);

move_and_collide(move_x, move_y, obj_manager.collidables);

//animation handling (only)
if(move_x != 0 && instance_exists(obj_gun))
{
	sprite_index = spr_player_run
	if(move_x > 0)
	{
		if(image_dir ==1)
		{
			image_speed = 0.25;
			obj_gun.x = x;
		}
		else if (image_dir == -1)
		{
			image_speed = -0.25;
			obj_gun.x = x + 3;
		}
	}
	else if(move_x < 0) 
	{
		if(image_dir ==1)
		{
			image_speed = -0.25;
			obj_gun.x = x - 3;
		}
		else if (image_dir == -1)
		{
			image_speed = 0.25;
			obj_gun.x = x;
		}
	}
}
else if (move_y < 0)
{
	sprite_index = spr_player_jump;
}
else if (hurt)
{
	sprite_index = spr_player_hurt;
	image_speed = 0.25;
}
else if (_health <= 0)
{
	sprite_index = spr_player_death;
	image_speed = 0.25;
}
else 
{
	sprite_index = spr_player_idle;
}

if(hurt)//health deduction
{
	if(!damaged)
	{
		_health--;
		damaged = true;
	}
	if(image_index == image_number -1)
	{
		hurt = false;
		damaged = false;
	}
}
if(_health <= 0) //death restart control
{
	if(!death_location_stored)
	{
		death_location = x;
		death_location_stored = true;
	}
	x = death_location;
	instance_destroy(obj_gun);
	hurt = false;
	if(sprite_index == spr_player_death)
	{
		if(image_index >= image_number - 1)
		{
			image_speed = 0;
			restart_cd--;
			if(restart_cd <= 0)
			{
				room_restart();
			}
		}
	}
}

conversable = false;