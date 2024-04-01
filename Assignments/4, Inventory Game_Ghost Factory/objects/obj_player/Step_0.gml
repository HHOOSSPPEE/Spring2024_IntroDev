//movement of player
if(room != rm_1)
{
	if(keyboard_check(ord("W")) && y > 25 
	&& !place_meeting(x, y-5, obj_wall))
	{
		y -= spd;
	}
	if(keyboard_check(ord("A")) && x > 25 
	&& !place_meeting(x-5, y, obj_wall))
	{
		image_xscale = 1;
		x -= spd;
	}
	if(keyboard_check(ord("S")) && y < room_height-25
	&& !place_meeting(x, y+5, obj_wall))
	{
		y += spd;
	}
	if(keyboard_check(ord("D")) && x < room_width-25
	&& !place_meeting(x+5, y, obj_wall))
	{
		image_xscale = -1;
		x += spd;
	}
}

//die
if(hp <= 0)
{
	game_restart();
}