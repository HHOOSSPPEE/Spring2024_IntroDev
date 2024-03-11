//movable if in camera
var cam = view_camera[0];
var x1 = camera_get_view_x(cam);
var y1 = camera_get_view_y(cam);
var x2 = x1 + camera_get_view_width(cam);
var y2 = y1 + camera_get_view_height(cam);

//player input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));

//movements
var move = key_right - key_left;
hsp = move * platform_sp;

if(point_in_rectangle(x, y, x1, y1, x2, y2)) 
{
	//horizontal collision
	if(place_meeting(x+hsp, y, obj_platform_regular)
	|| place_meeting(x+hsp, y, obj_appear))
	{
		while(!place_meeting(x+sign(hsp), y, obj_platform_regular)
		&& !place_meeting(x+sign(hsp), y, obj_appear))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}
	x = x + hsp;
}