if (target != noone)
{
	xCam = target.x;
	yCam = target.y;
}


//camera smoothing
x += (xCam - x);

//camera now tracks camera object
camera_set_view_pos(view_camera[0], 0, y);

if (target.x > camera_get_view_width(view_camera[0])/2)
{
	camera_set_view_pos(view_camera[0]  , x - (camWidth * .5), y);
}
