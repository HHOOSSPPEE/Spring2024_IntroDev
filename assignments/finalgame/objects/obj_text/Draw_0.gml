
	
	var _xx = screen_bord +  camera_get_view_x(view_camera[0]);
	var _yy = screen_bord +  camera_get_view_y(view_camera[0]);
	var _sep = sep;

draw_sprite(spr_text,0, _xx, _yy);

var text = "insert text";

draw_text_ext_transformed_color(x+20, y+20, text, 50, 500, 1, 1, 0, c_white, c_white, c_white, c_white, 1);