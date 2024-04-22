if(target != noone)
{
	xCam = target.x;
	yCam = target.y;
}

x += (xCam - x)/25;
y += (yCam - y)/25;

camera_set_view_pos(view_camera[0], x-(camWidth*.5), y - (camHeight*.5));

