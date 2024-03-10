if (target != noone)
{
	xCam = target.x;
	yCam = target.y;
}


//camera smoothing
x += (xCam - x);

//camera now tracks camera object
camera_set_view_pos(view_camera[1], 0, 0);

//x
if (target.x > camera_get_view_width(view_camera[1])/2)
{
	camera_set_view_pos(view_camera[1]  , x - (camWidth * .5), 0);
}
if (camera_get_view_x(view_camera[1]) + camWidth > room_width)
{
	camera_set_view_pos(view_camera[1], room_width - camWidth, 0);
}




