if (view_current = 0)
{

	if (obj_p2.x - 10 > (camera_get_view_x(view_camera[0]) + obj_p1_camera.camWidth))
	{
	
		y = obj_p2.y - obj_p2.sprite_height/2 + 13;
		x = camera_get_view_x(view_camera[0]) + obj_p1_camera.camWidth - 20;
		draw_sprite_ext(spr_p2_arrow, 0, x, y, 1, 1, 0, c_white, 1);
	}

	else if (obj_p2.x + 10 < (camera_get_view_x(view_camera[0])))
	{
		y = obj_p2.y - obj_p2.sprite_height/2 + 13;
		x = camera_get_view_x(view_camera[0]) + 20;
		draw_sprite_ext(spr_p2_arrow, 0, x, y, -1, 1, 0, c_white, 1);
	}
}