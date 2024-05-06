/// @description Insert description here
// You can write your code in this editor


if (target  != noone) 
{
		xCam = target.x + 100;
		yCam = target.y +60;
}

//camera smoothing, change division # if you want to change the ease - higher = faster
x += (xCam - x)/30;
y += (yCam - y)/30;

//camera now goes to our camera object
camera_set_view_pos(view_camera[0],x-(camWidth*.5),y - (camHeight*.5));

