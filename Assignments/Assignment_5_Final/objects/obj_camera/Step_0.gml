if (target != noone)
{
    xCam = target.x;
    yCam = target.y;
}

//camera smoothing
x += (xCam - x);
y += (yCam - y);

//track cam object
camera_set_view_pos(view_camera[0], 0, 0);

//clamp
var camX = clamp(x - (camWidth * 0.5), 0, room_width - camWidth);
var camY = clamp(y - (camHeight * 0.5) + 10, 0, room_height - camHeight);

//camera position
camera_set_view_pos(view_camera[0], camX, camY);