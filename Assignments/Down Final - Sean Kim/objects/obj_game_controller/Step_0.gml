var cam = view_camera[0];
var view_x = camera_get_view_x(cam);
var view_y = camera_get_view_y(cam);
var view_width = camera_get_view_width(cam);
var view_height = camera_get_view_height(cam);

if (obj_player1.x < view_x || obj_player1.x > view_x + view_width || obj_player1.y < view_y || obj_player1.y > view_y + view_height) {
    global.player2Wins2 = true;
	global.pause = true;
}

if (obj_player2.x < view_x || obj_player2.x > view_x + view_width || obj_player2.y < view_y || obj_player2.y > view_y + view_height) {
    global.player1Wins2 = true;
	global.pause = true;
}
