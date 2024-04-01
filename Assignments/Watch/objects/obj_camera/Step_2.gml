//change camera pos
if (x < 0)
{ 
	x = 0;
}
if (x + camera_width > room_width)
{ 
	x = room_width - camera_width;
}

if (y < 0)
{ 
	y = 0;
}
if (y + camera_height > room_height)
{ 
	y = room_height - camera_height;
}

//
camera_set_view_pos(view_camera[0], x, y);
