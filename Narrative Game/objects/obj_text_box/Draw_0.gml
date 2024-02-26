// Draw the text box sprite at the specified camera position
draw_sprite(spr_text_box, 0, camera_get_view_x(view_camera[0]) + x, camera_get_view_y(view_camera[0]) + y);

// Draw the text inside the text box
draw_text_ext(camera_get_view_x(view_camera[0]) + x, camera_get_view_y(view_camera[0]) + y, text, string_height(text), sprite_width);