if (target != noone)
{
	xCam = target.x;
}

//camera smoothing
x += (xCam - x)/3;

if (xCam < camWidth) xCam = camWidth;


//camera now tracks camera object
camera_set_view_pos(view_camera[0], x-(camWidth * .5) + 80, 0)