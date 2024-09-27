move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x *= move_speed;

if (place_meeting(x, y+2, obj_manager.collidable))
{
	move_y = 0;
	if (keyboard_check(vk_space)) move_y = -jump_speed;
}
else if (move_y < 10) move_y += 1;

move_and_collide(move_x, move_y, obj_manager.collidable);

if(move_x != 0)
{
	image_xscale = sign(move_x);
}

if(move_x == 0)
{
	if(status == 0)
	{
		sprite_index = spr_mario_idle;
	}
	else
	{
		sprite_index = spr_big_idle;
	}
}
else
{
	if(status == 0)
	{
		sprite_index = spr_mario_run;
	}
	else
	{
		sprite_index = spr_big_run;
	}
}

if(hurt)
{
	if(!invincible)
	{
	if(status == 1)
	{
		status--;
	}
	_health--;
	invincible = true;
	}
}

if(invincible)
{
	invincible_timer--;
	if(invincible_timer <= 0)
	{
		invincible = false;
		invincible_timer = 60;
	}
}


if(_health <= 0 || y > 240)
{
	room_restart();
}


//if(status == 1)
//{
	if(x > 925 && x < 930 && y > 135)
	{
		room_goto(rm_underworld);
		obj_controller.status = 1;
	}

if(room == rm_overworld)
{
	if(obj_controller.status == 1)
	{
		x = 2624;
		y = 175;
		status = 1;
		obj_controller.status++;
	}
}

if(room = rm_underworld)
{
	status = 1;
	if(obj_controller.status == 2)
	{
		obj_controller.status--;
	}
	if(x>200 && y > 206)
	{
		room_goto(rm_overworld);
	}
}