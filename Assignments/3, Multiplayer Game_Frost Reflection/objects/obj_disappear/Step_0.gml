//touchable if in camera
var cam = view_camera[0];
var x1 = camera_get_view_x(cam);
var y1 = camera_get_view_y(cam);
var x2 = x1 + camera_get_view_width(cam);
var y2 = y1 + camera_get_view_height(cam);

if(point_in_rectangle(x, y, x1, y1, x2, y2)
&& place_meeting(x, y, obj_reflection)) 
{
	if(obj_appear.visible == false)
	{
		obj_appear.visible = true;
		instance_destroy();
	}
	else if(obj_appear.visible == true)
	{
		obj_appear.visible = false;
		instance_destroy();
	}
}