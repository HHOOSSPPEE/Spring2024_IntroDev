/// @description Insert description here
// You can write your code in this editor

if(move_x != 0)
{
	image_xscale = sign(move_x);
}

if(instance_exists(gun))
{
	gun.image_xscale = image_xscale;
}

if(instance_exists(gun))
{
	if(p_type == 1)
	{
		keyboard_right = keyboard_check(ord("D"));
		keyboard_left = keyboard_check(ord("A"));
		gun.p_type = 1;
	}
	else if (p_type = 2)
	{
		keyboard_right = keyboard_check(vk_right);
		keyboard_left = keyboard_check(vk_left);
		gun.p_type = 2;
	}
}

//movement input
if(!_health <= 0 || hurt)
{
	move_x = keyboard_right - keyboard_left;
	move_x *= move_speed;
}

if(place_meeting(x, y + 2, obj_manager.collidables))
{
	move_y = 0;
}
else 
{
	if(move_y < 8)
	{
		move_y += grv;
	}
}

if(x >= 0 || x <= room_height)
{
	move_and_collide(move_x, move_y, obj_manager.collidables);
}

//animation handling (only)
if(move_x != 0 && instance_exists(gun))
{
	sprite_index = spr_cyborg_run
	if(move_x > 0)
	{
		image_speed = -0.25;
		gun.x = x + 3;
	}
	else if(move_x < 0) 
	{
		image_speed = -0.25;
		gun.x = x - 3;
	}
}
else if (hurt)
{
	sprite_index = spr_cyborg_hurt;
	image_speed = 0.25;
}
else if (_health <= 0)
{
	sprite_index = spr_cyborg_die;
	image_speed = 0.25;
}
else 
{
	sprite_index = spr_cyborg_idle;
}

if(!place_meeting(x + move_x, y - sprite_height -2, obj_manager.collidables))
{
	if(place_meeting(x + 1, y-2, obj_manager.collidables))
	{
		y -= sprite_height/2;
	}
	else if(place_meeting(x - 1, y-2, obj_manager.collidables))
	{
		y -= sprite_height/2;
	}
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
	hurt = false;
	instance_destroy(gun);
	if(sprite_index == spr_cyborg_die)
	{
		if(image_index >= image_number - 1)
		{
			image_speed = 0;
			var count = 1;
			if(count == 1)
			{
				if(p_type == 1)
				{
					obj_manager.p1_state = false;
					obj_manager.p2_score ++;
				}
				else if(p_type == 2)
				{
					obj_manager.p2_state = false;
					obj_manager.p1_score ++;
				}
				count ++;
				instance_destroy();
			}
		}
	}
}