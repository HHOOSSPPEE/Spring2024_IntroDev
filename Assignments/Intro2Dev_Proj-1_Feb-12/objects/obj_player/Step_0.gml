//mario type
image_speed = 0;
if(mario == mario_type[0])
{
	sprite_index = spr_small_mario;
	move_speed = s_move_speed;
	jumping_frame = s_jumping_frame;
	climbing_frame_start = s_climbing_frame_start;
	climbing_frame_end = s_climbing_frame_end;
}
else if(mario == mario_type[1])
{
	sprite_index = spr_big_mario;
	move_speed = b_move_speed;
	jumping_frame = b_jumping_frame;
	climbing_frame_start = b_climbing_frame_start;
	climbing_frame_end = b_climbing_frame_end;
	if(x >= 925 && x <= 931)
	{
		if(y <= 150)
		{
			room_goto(room_hidden);
			obj_manager.entrance_count ++;
		}
	}
}

if(room == room_main)
{
	if(obj_manager.entrance_count == 1)
	{
		mario = mario_type[1];
		x = 2624;
		y = 175;
		obj_manager.entrance_count++;
	}
}

if(room == room_hidden)
{
	mario = mario_type[1];
	if(obj_manager.entrance_count ==2)
	{
		obj_manager.entrance_count--;
	}
	if(x > 200 && x < 206)
	{
		if(y > 206)
		{
			room_goto(room_main);
		}
	}
}

//animation check
anim_cd--;
climbing_cd--;
if (!transforming)
{
	switch (status)
	{
		case "idle":
			image_index = 0;
			break;
		case "running":
			if ((running_frame == 3 && anim_dir == 1) || (running_frame == 1 && anim_dir == -1))
			{
				anim_dir *= -1;
			}

			if (anim_cd <= 0)
			{
				running_frame += anim_dir;
				anim_cd = anim_timer;
			}
			image_index = running_frame;
			break;
		case "jumping":
			image_index = jumping_frame;
			break;
		case "death":
			image_index = 13;
			break;
		case "climbing":
			if (climbing_cd <= 0)
			{
				if (climbing_frame == climbing_frame_start)
				{
					climbing_frame++;
				}
				else if (climbing_frame == climbing_frame_end)
				{
					climbing_frame--;
				}
				climbing_cd = climbing_timer;
			}
			image_index = climbing_frame;
			break;
	}
}
else if (transforming)
{
	sprite_index = spr_growth_shrink;
	move_x = 0;
	invincible = true;
	if(mario == mario_type[0])
	{
		transform_cd--;
		if(transform_cd <= 0)
		{
			if(transform_frame_count < array_length(enlarge_animation_sequence))
			{
				image_index = enlarge_animation_sequence[transform_frame_count];
				transform_frame_count++;
				transform_cd = transform_timer;	
			}
			else
			{
				mario = mario_type[1]
				transforming = false;
				transform_frame_count = 0;
			}
		}
	}
	else if (mario == mario_type[1])
	{
		transform_cd--;
		if(transform_cd <= 0)
		{
			if(transform_frame_count < array_length(shrink_animation_sequence))
			{
				image_index = shrink_animation_sequence[transform_frame_count];
				transform_frame_count++;
				transform_cd = transform_timer;	
			}
			else
			{
				mario = mario_type[0]
				transforming = false;
				transform_frame_count = 0;
			}
		}
	}
	invincible = false;
}

//direction (movement)
if(keyboard_check(vk_right) || keyboard_check(ord("D")))
{
	r_check = 1;
}
else
{
	r_check = 0;
}

if(keyboard_check(vk_left) || keyboard_check(ord("A")))
{
	l_check = 1;
}
else
{
	l_check = 0;
}

//resetting speed when turning
var current_dir_x = r_check - l_check;

if (current_dir_x != dir_x && current_dir_x != 0)
{
    move_x = 0;
}
dir_x = current_dir_x;

//movement
if(dir_x == 0)
{
	move_x *= 0.95;
	if(move_x <= 0.5)
	{
		move_x = 0;
	}
}
else if(dir_x != 0)
{
	
	if(abs(move_x) <= move_speed)
	{
		move_x += dir_x * (move_speed * 0.03);
	}
}

//image direction change
if(move_x != 0)
{
	status = statusTypes[1];
	
	if(move_x > 0)
	{
		image_xscale = 1;
	}
	else
	{
		image_xscale = -1;
	}
}
else
{
	status = statusTypes[0];
}
//collision
if (place_meeting(x, y+2, obj_ts.collidables) || kill)
{
	move_y = 0;
	grav_cd = grav_timer;
	if (keyboard_check_pressed(vk_space) || kill) 
	{	
		if(kill)
		{
			move_y = -jump_speed/4;
			kill = false;
		}
		else
		{
			move_y = -jump_speed;
		}
	}
}
else if (move_y <= 3 && !flag) 
{
	grav_cd--;
	if(grav_cd <= 0)
	{
		move_y += grv;
		status = statusTypes[2];
	}
}
move_and_collide(move_x, move_y, obj_ts.collidables);

//flag
if(flag)
{
	status = statusTypes[4];
	if(y < flag_btm_height)
	{
		move_y = 0;
		move_x = 0;
		y += flag_drop_speed;
	}
	else if(y >= flag_btm_height)
	{
		flag = false;
		y = flag_btm_height;
	}
}

//victory
if(x > victory_location)
{
	if(place_meeting(x, y+1, obj_ts.collidables))
	{
		victory = true;
		instance_destroy();
	}
}

if(!invincible)
{
	if(damage)
	{
		_health--;
		if(mario == mario_type[1])
		{
			transforming = true;
		}
	}
	if(_health <= 0)
	{
		death = true;
		status = statusTypes[3];
	}
}



if(death = true)
{
	status = statusTypes[3];
	instance_create_layer(x, y, "Instances", obj_death);
	instance_destroy();
}
