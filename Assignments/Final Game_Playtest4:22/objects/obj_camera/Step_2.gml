//stop moving the camera as it reaches the border
if(x < 0)
{
	x = 0;
}
if(x+view_width > room_width)
{
 	x = room_width - view_width;
}
if(y < 0)
{
	y = 0;
}
if(y+view_height > room_height)
{
	y = room_height - view_height;
}

//set view camera 0 to this camera's location
camera_set_view_pos(view_camera[0], x, y);