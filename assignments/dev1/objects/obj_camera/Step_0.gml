/// @description Insert description here
// You can write your code in this editor

if(target != noone){
	cam_x = target.x;
	cam_y = target.y;
}

//camera smoothing
x += (cam_x - x)/1;
y += (cam_y - y)/1;

//object tracking
camera_set_view_pos(view_camera[0], x - (cam_width * .5), y - (cam_height * .5))


