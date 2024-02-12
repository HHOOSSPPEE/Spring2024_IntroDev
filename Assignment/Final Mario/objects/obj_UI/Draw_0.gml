
var cam = view_camera[0]; 
var cam_x = camera_get_view_x(cam); 
var cam_y = camera_get_view_y(cam); 

var ui_x = cam_x ; 
var ui_y = cam_y ; 


draw_set_halign(fa_left);
draw_set_valign(fa_top);


draw_text_transformed(ui_x - view_xview[0], ui_y - view_yview[0], "SCORE: " + string(global.score), 0.5, 0.5, 0);
draw_text_transformed(ui_x - view_xview[0] + 50, ui_y - view_yview[0], "COINS: " + string(global.coin), 0.5, 0.5, 0);
draw_text_transformed(ui_x - view_xview[0] + 100, ui_y - view_yview[0], "World 1-1", 0.5, 0.5, 0);
draw_text_transformed(ui_x - view_xview[0] + 150, ui_y - view_yview[0], "Time:" + string(global.timer) , 0.5, 0.5, 0);
