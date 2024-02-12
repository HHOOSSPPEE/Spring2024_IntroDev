/// @description Insert description here
// You can write your code in this editor

//spawn animation
if(y >= dest)
{
	move_cd--;
	if(move_cd <=0)
	{
		y--;
		move_cd = move_timer;
	}
}

if (place_meeting(x, y+2, obj_ts.collidables))
{
	grav_cd = grav_timer;
}
else if (move_y <= 3) 
{
	grav_cd--;
	if(grav_cd <= 0)
	{
		move_y += grv;
	}
}

if(place_meeting((x+sprite_width/2), y-sprite_height, obj_ts.collidables) || place_meeting((x-sprite_width/2), y-sprite_height, obj_ts.collidables))
{
	_speed *= -1;
}

move_and_collide(_speed, move_y, obj_ts.collidables);

if(x < 0 || x > room_width || y > room_height)
{
	instance_destroy();
}
