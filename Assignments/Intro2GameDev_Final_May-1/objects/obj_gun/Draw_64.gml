if(obj_player.state != playerState.Dead && shoot_cd != 0)
{
	if(gun == gunType.svd)
	{
		var camera_x = camera_get_view_x(view_camera[0]);
	    var camera_y = camera_get_view_y(view_camera[0]);
	    var camera_width = camera_get_view_width(view_camera[0]);
	    var camera_height = camera_get_view_height(view_camera[0]);
	
		var player_screen_x = (obj_player.x - camera_x) * (display_get_gui_width() / camera_width);
	    var player_screen_y = (obj_player.y - camera_y) * (display_get_gui_height() / camera_height);
		
		
		var xr = player_screen_x  + progress_bar;
		var xl = player_screen_x  - progress_bar;
		var yu = player_screen_y  - 85 - bar_height;
		var yb = player_screen_y  - 85 + bar_height;
	
		draw_rectangle(xl, yu, xr, yb, true);
	
		var pxr = xl + ((xr-xl) * (1-(shoot_cd/shoot_timer)));
	
		draw_rectangle(xl, yu, pxr, yb, false);
	}
}