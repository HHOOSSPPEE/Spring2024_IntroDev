/// @description Insert description here
// You can write your code in this editor


range_left = camera_get_view_x(view_camera[0]); // Left boundary of the view
range_right = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - obj_player.sprite_width; // Right boundary of the view
if(chase == false)
{
	spd = -1;
	if(x<= range_right-sprite_width)
	{
		chase= true;
	}
}else
{
	if(x <= range_left or x>= range_right - sprite_width)
	{
		spd =-spd;
	
	}
}

x+=spd;