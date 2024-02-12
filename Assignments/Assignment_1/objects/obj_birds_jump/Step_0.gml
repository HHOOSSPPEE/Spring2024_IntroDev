if ((obj_camera.x + obj_camera.camWidth) > x)
{
	if (place_meeting(x, y, tmFloor))
	{
		image_index = 0;
		ground_timer++;
		if (ground_timer > ground_timer_max)
		{
			isFlying = true;
		}
	}
	
	if (isFlying)
	{
		image_speed = 2;
		y += jump_speed;
		fly_timer++
		if (fly_timer > fly_timer_max)
		{
			isFlying = false;
		}
		ground_timer = 0;
	}
	
	if (!isFlying && !place_meeting(x, y, tmFloor))	
	{ 
		y -= jump_speed;
		fly_timer = 0;
	}
				
}