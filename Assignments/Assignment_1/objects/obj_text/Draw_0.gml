draw_set_colour(c_black);

draw_set_font(fnt_small);

draw_text( 10, obj_camera.camHeight + 5, "SC :  ");
draw_text( 10, obj_camera.camHeight + 20, "KIRBY  " + string(global.health));
draw_text( 130, obj_camera.camHeight + 20, "X " + string(global.total_lives));