/// @description Insert description here
// You can write your code in this editor

//if(target != noone)
//{
if(!place_meeting(x,y,obj_camera_collider))
{
	XCam = target.x + 40;
	YCam = target.y - 195;
}
//}

// camera smoothing
//x += (XCam - x) /25;
//y += (YCam - y) /25;

//camera tracks camera object
if(!place_meeting(target.x,target.y,obj_camera_collider))
{
	camera_set_view_pos(view_camera[0], target.x - (camWidth*0.5), y - Yheight);
}
