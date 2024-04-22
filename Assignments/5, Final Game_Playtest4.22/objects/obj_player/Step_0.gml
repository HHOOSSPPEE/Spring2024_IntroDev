//movement of player
if(room != rm_1)
{
	if(keyboard_check(ord("W")) && y > 25 
	&& !place_meeting(x, y-5, obj_wall))
	{
		y -= spd;
		if(y < (obj_camera.y + obj_camera.view_height) - (200 + sprite_width))
		{
			obj_camera.y -= spd;
		}
	}
	if(keyboard_check(ord("A")) && x > 25 
	&& !place_meeting(x-5, y, obj_wall))
	{
		image_xscale = 1;
		x -= spd;
		if(x < (obj_camera.x + obj_camera.view_width) - (200 + sprite_width))
		{
			obj_camera.x -= spd;
		}
	}
	if(keyboard_check(ord("S")) && y < room_height-25
	&& !place_meeting(x, y+5, obj_wall))
	{
		y += spd;
		if(y > obj_camera.y + 200)
		{
			obj_camera.y += spd;
		}
	}
	if(keyboard_check(ord("D")) && x < room_width-25
	&& !place_meeting(x+5, y, obj_wall))
	{
		image_xscale = -1;
		x += spd;
		if(x > obj_camera.x + 200)
		{
			obj_camera.x += spd;
		}
	}
}

//die
if(hp <= 0)
{
	game_restart();
}

//level 2 new sprite
if(exp_ >= 30)
{
	sprite_index = spr_player_2;
	hp = 8;
}