if(target != noone)
{
	xCam = target.x;
	yCam = target.y;
}

//camera smoothing
x += (xCam - x)/3;
y += (yCam - y)/3;

//camera now tracks camera object
camera_set_view_pos(view_camera[0], x-(camWidth*.35), y - (camHeight* .35));
