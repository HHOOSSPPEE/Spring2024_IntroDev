	var _xx = screen_bord +  camera_get_view_x(view_camera[0]);
	var _yy = screen_bord +  camera_get_view_y(view_camera[0]);
	
	
if (mouse_x > _xx && mouse_x < _xx+30 && mouse_y > _yy && mouse_y < _yy +20) && mouse_check_button_pressed(mb_left)
{
	instance_create_layer(x, y, "Instances", obj_text);
}