camWidth = 160;
camHeight = 128;

target = obj_kirby;

xCam = target.x;
yCam = target.y;

camera_set_view_pos(view_camera[0], x, y);


camera_set_view_pos(view_camera[1], 0, camHeight);