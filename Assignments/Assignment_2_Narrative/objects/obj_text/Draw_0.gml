candy_x_place = camera_get_view_x(view_camera[0]) + obj_camera.camWidth - 50;
lives_x_place = camera_get_view_x(view_camera[0]) + obj_camera.camWidth - 180;

draw_set_colour(c_black);

draw_set_font(fnt_main);

draw_text(candy_x_place, 10, "X " + string(global.candy));

draw_text(lives_x_place, 10, "X " + string(global.lives));