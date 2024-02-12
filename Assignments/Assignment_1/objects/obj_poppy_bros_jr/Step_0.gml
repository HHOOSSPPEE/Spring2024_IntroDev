if ((obj_camera.x + obj_camera.camWidth) > x)
{
	x -= enemy_speed;
	
	if ((x > x_begin + enemy_bound) || (x < x_begin - enemy_bound))
	{
		enemy_speed *= -1;
		image_xscale *= -1;
		
	}
}
