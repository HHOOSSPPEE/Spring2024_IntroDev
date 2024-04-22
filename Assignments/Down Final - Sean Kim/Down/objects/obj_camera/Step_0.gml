var player1_y = obj_player1.y;
var player2_y = obj_player2.y;

var target_y;
if (player1_y > player2_y) {
    target_y = player1_y;
} else {
    target_y = player2_y;
}

var camera = view_camera[0];

var cam_x = camera_get_view_x(camera);
var cam_y = camera_get_view_y(camera);
var cam_width = camera_get_view_width(camera);
var cam_height = camera_get_view_height(camera);

var new_cam_y = target_y - (cam_height / 2);
new_cam_y = clamp(new_cam_y, 0, room_height - cam_height);

camera_set_view_pos(camera, cam_x, new_cam_y);
