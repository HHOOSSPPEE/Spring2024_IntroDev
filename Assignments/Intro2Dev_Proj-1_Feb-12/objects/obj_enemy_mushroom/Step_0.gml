/// @description Insert description here
// You can write your code in this editor


move_and_collide(move_x, 0, obj_ts.collidables);

if(place_meeting(x + 2, y, obj_ts.collidables) || place_meeting(x - 2, y, obj_ts.collidables))
{
	move_x *= -1;
}

image_index = frame;

if(!death)
{
	animation_cd--;
	if (animation_cd <= 0)
	{
		if (frame == 0)
		{
			frame++;
		}
		else if (frame == 1)
		{
			frame--;
		}
		animation_cd = animation_timer;
	}
}
else
{
	frame = 2;
	move_x = 0;
	death_timer--;
	if(death_timer <= 0)
	{
		instance_destroy();
	}
}


if(x < 0 || x > room_width || y > room_height)
{
	instance_destroy();
}


/// @description Insert description here
// You can write your code in this editor


