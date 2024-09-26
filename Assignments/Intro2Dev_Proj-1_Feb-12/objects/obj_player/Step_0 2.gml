//animation check
anim_cd--;
climbing_cd--;
switch(status)
{
	case "idle":
		image_index = 0;
		break;
	case "running":
		if((running_frame == 3 && anim_dir == 1) || (running_frame == 1 && anim_dir == -1))
		{
	       anim_dir *= -1;
		}
	   
	    if(anim_cd <= 0)
		{
	      running_frame += anim_dir;
		   anim_cd = anim_timer;
		}
		image_index = running_frame;
		break;
	case "jumping":
		image_index = 4;
		break;
	case "death":
		image_index = 14;
		break;
	case "climbing":
		if(climbing_cd <= 0)
		{
			if(climbing_frame == 5)
			{
				climbing_frame++;
			}
			else if(climbing_frame == 6)
			{
				climbing_frame--;
			}
			climbing_cd = climbing_timer;
		}
		image_index = climbing_frame;
		break;
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
if (place_meeting(x, y+2, collidable_ts) || place_meeting(x, y+2, obj_mysterytile) || place_meeting(x, y+2, obj_brick))
{
	move_y = 0;
	if (keyboard_check_pressed(vk_space)) move_y = -jump_speed;
}
else if (move_y < 5 && !flag) 
{
	move_y += grv;
	status = statusTypes[2];
}

move_and_collide(move_x, move_y, collidable_ts);


//still collision
if(place_meeting(x, y-2, obj_mysterytile) || place_meeting(x, y-2, obj_brick))
{
	move_y = 0;
}
else if((place_meeting(x-2, y, obj_mysterytile)) || place_meeting(x+2, y, obj_mysterytile))
{
	move_x = 0;
}
else if((place_meeting(x, y+2, obj_mysterytile)) || place_meeting(x+2, y+2, obj_mysterytile))
{
	move_x = 0;
}
else if((place_meeting(x-2, y, obj_brick)) || place_meeting(x+2, y, obj_brick))
{
	move_x = 0;
}
else if((place_meeting(x, y+2, obj_brick)) || place_meeting(x, y+2, obj_brick))
{
	move_x = 0;
}



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
	if(place_meeting(x, y+1, collidable_ts))
	{
		victory = true;
		instance_destroy();
	}
}


