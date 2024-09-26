if(target != noone)
{
    xCam = target.x;
    yCam = target.y;
}


var newX = x + (xCam - x) / 1;
//var newY = y + (yCam - y) / 1;


var camWidth = camera_get_view_width(view_camera[0]);
//var camHeight = camera_get_view_height(view_camera[0]);
var fixedY = (room_height * 0.5) - (camHeight * 0.5);

newX = clamp(newX, camWidth * 0.5, room_width - camWidth * 0.5);
//newY = clamp(newY, camHeight * 0.5, room_height - camHeight * 0.5);


camera_set_view_pos(view_camera[0], newX - (camWidth * 0.5), fixedY-110);




