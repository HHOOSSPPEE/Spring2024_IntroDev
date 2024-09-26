/// @description Insert description here
// You can write your code in this editor

//animation controller (ONLY)
image_speed = 0.5;
if(hurt)
{
	sprite_index = spr_enemy_hurt;
	image_speed = 0.25;
}
else if (_health <= 0)
{
	sprite_index = spr_enemy_death;
	image_speed = 0.25;
}
else if (can_attack || in_range)
{
	sprite_index = spr_enemy_attack;
}
else
{
	sprite_index = spr_enemy_walk;
}

//tracking player
if ((!place_meeting(x, y+2, obj_manager.collidables) && move_y < 10)) 
{
	move_y += grv;
}
else move_y = 0;
if(!hurt || _health > 0 || !in_range)
{
	if(in_range)
	{
		move_x = 0;
	}
	else
	{
		if(x < obj_player.x - 3)
		{
			image_xscale = 1;
			move_x = move_speed;
		}
		else if (x > obj_player.x + 3)
		{
			image_xscale = -1;
			move_x = -move_speed;
		}
		else
		{
			move_x = 0;
		}
	}
}

move_and_collide(move_x, move_y, obj_manager.collidables);

//attacking player
attack_cd--;
if(point_distance(x, y, obj_player.x, obj_player.y) < attack_range)
{
	in_range = true;
	if(attack_cd <= 0)
	{
		can_attack = true;
	}
	else
	{
		can_attack = false;
		image_speed = 0;
	}
}
else
{
	in_range = false;
	can_attack = false;
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
if(_health <= 0) //death self destroy control
{
	hurt = false;
	if(sprite_index == spr_enemy_death)
	{
		if(image_index >= image_number - 1)
		{
			instance_destroy();
		}
	}
}