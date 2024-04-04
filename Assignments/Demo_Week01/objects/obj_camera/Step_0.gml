               /// @description Insert description here
// You can write your code in this editor

if(target != noone)
{
	xCam = target.x;
	yCam = target.y;
}

//camera smoothing
x += (xCam - x)/1;
y += (yCam - y)/1;

//camera now tracks camera object
camera_set_view_pos(view_camera[0],x-(camWidth * .5), y-(camHeight * .5));