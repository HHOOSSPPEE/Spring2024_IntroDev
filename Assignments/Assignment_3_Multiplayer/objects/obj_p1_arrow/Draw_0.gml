if (view_current = 1)
{

	if (obj_p1.x - 10 > (camera_get_view_x(view_camera[1]) + obj_p2_camera.camWidth))
	{
	
		y = obj_p1.y - obj_p1.sprite_height/2 + 35;
		x = camera_get_view_x(view_camera[1]) + obj_p2_camera.camWidth - 20;
		draw_sprite_ext(spr_p1_arrow, 0, x, y, 1, 1, 0, c_white, 1);
	}

	else if (obj_p1.x + 10 < (camera_get_view_x(view_camera[1])))
	{
		y = obj_p1.y - obj_p1.sprite_height/2 + 35;
		x = camera_get_view_x(view_camera[1]) + 20
		draw_sprite_ext(spr_p1_arrow, 0, x, y, -1, 1, 0, c_white, 1);
	}
}