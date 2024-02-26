//movement of player
if(keyboard_check(ord("W")))
{
	if(room == rm_1_home && y > 360)
	{
		y -= avatar_speed;
	}
	if(room != rm_1_home && y > 40 
	&& !place_meeting(x, y, obj_cover))
	{
		y -= avatar_speed;
		if(y < (obj_camera.y + obj_camera.view_height) - (40 + sprite_width))
		{
			obj_camera.y -= avatar_speed;
		}
	}

}
if(keyboard_check(ord("A")))
{
	if(room == rm_1_home && x > 200)
	{
		x -= avatar_speed;
		image_xscale = 1;
	}
	if(room != rm_1_home && x > 45)
	{
		x -= avatar_speed;
		image_xscale = 1;
		if(x < (obj_camera.x + obj_camera.view_width) - (40 + sprite_width))
		{
			obj_camera.x -= avatar_speed;
		}
	}
}
if(keyboard_check(ord("S")))
{
	if(room == rm_1_home && y < room_height-200)
	{
		y += avatar_speed;
	}
	if(room != rm_1_home && y < room_height-40)
	{
		y += avatar_speed;
		if(y > obj_camera.y + 40)
		{
			obj_camera.y += avatar_speed;
		}
	}
}
if(keyboard_check(ord("D")))
{
	if(room == rm_1_home && x < room_width-200)
	{
		x += avatar_speed;
		image_xscale = -1;
	}
	if(room != rm_1_home && x < room_width-45)
	{
		x += avatar_speed;
		image_xscale = -1;
		if(x > obj_camera.x + 40)
		{
			obj_camera.x += avatar_speed;
		}
	}
}

//close text box
if(room == rm_1_home)
{
	if(!place_meeting(x, y, obj_fire)
	&& !place_meeting(x, y, obj_food)
	&& !place_meeting(x, y+20, obj_sofa))
	{
		obj_txt_box.visible = false;
	}
}
if(room == rm_2_garden)
{
	if(!place_meeting(x, y, obj_mouse_w)
	&& !place_meeting(x, y, obj_sign)
	&& !place_meeting(x, y, obj_footprints))
	{
		obj_txt_box.visible = false;
	}
}
if(room == rm_3_forest)
{
	if(!place_meeting(x, y, obj_dog)
	&& !place_meeting(x, y, obj_letter)
	&& !place_meeting(x, y, obj_flowers))
	{
		obj_txt_box.visible = false;
	}
}
if(room == rm_4_lakeside)
{
	if(!place_meeting(x, y, obj_bone)
	&& !place_meeting(x, y, obj_trigger)
	&& !place_meeting(x, y, obj_rug_w))
	{
		obj_txt_box.visible = false;
	}
}
if(room == rm_5_cemetery)
{
	if(!place_meeting(x, y, obj_tombstone_1))
	{
		obj_txt_box.visible = false;
	}
}
