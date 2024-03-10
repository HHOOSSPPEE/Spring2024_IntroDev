if (target != noone)
{
	xCam = target.x;
	yCam = target.y;
}


//camera smoothing
x += (xCam - x);

//camera now tracks camera object
camera_set_view_pos(view_camera[0], 0, 0);

if (target.x > camera_get_view_width(view_camera[0])/2)
{
	camera_set_view_pos(view_camera[0]  , x - (camWidth * .5), 0);
}


if (camera_get_view_x(view_camera[0]) + camWidth > room_width)
{
	camera_set_view_pos(view_camera[0], room_width - camWidth, 0);
}