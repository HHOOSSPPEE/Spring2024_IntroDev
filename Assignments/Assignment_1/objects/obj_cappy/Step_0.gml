if ((obj_camera.x + obj_camera.camWidth) > x)
{
	y -= enemy_speed;
	
	if ((y > y_begin + enemy_bound) || (y < y_begin - enemy_bound) || place_meeting(x, y, tmFloor))
	{
		enemy_speed *= -1;
	}
	
	if (place_meeting(x, y, tmFloor))
	{
		image_xscale *= -1;
	}
}
