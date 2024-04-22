//display inventory
if(visible == true)
{
	for (var i = 0; i < array_length(inv); i++)
	{
		var _xx = camera_get_view_x(view_camera[0])+32;
		var _yy = camera_get_view_y(view_camera[0])+32;
		var _sep = sep;
		var _col = c_white;
		
		//icon
		draw_sprite(inv[i].sprite, 0, _xx, _yy + _sep*i);
		
		//get selected color
		if(selected_item == i){_col = c_aqua;};
		draw_set_color(_col)
		
		//name
		draw_text(_xx+20, _yy-7+_sep*i, inv[i].name);
		
		//description
		if selected_item == i{
		draw_text_ext(_xx+20, _yy + _sep*array_length(inv), inv[i].description, 12, 100);
		}
		
		//reset color
		draw_set_color(c_white);		
	}
}