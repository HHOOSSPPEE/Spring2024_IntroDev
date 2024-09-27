/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_mario))
{
	var player_x = obj_mario.x;
	var player_y = obj_mario.y;

	var cam_x = clamp(player_x - view_w / 2, 0, room_width - view_w);
	var cam_y = clamp(player_y - view_h / 2, 0, room_height - view_h);

	camera_set_view_pos(view_camera[0], cam_x, cam_y);
}