if(target != noone)
{
	xCam = target.x;
	yCam = target.y;
}

//camera smoothing

x += (xCam - x)/25; //0 lag is to divide by 1
y += (yCam - y)/25;

//camera now tracks camera object
camera_set_view_pos(view_camera[0], x-(camWidth*.5), y - (camHeight*.5));


