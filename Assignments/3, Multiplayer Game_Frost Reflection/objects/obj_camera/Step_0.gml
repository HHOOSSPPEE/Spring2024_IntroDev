//target the player
if(target != noone && x > 0 && x+camWidth < room_width)
{
	xCam = target.x;
}

//camera smoothing
x += (xCam-x)/10; //arbitrary smoothing amount

//clamp camera coordinates to stay within the room
var viewX = clamp(x - camWidth * 0.5, 0, room_width - camWidth);
var viewY = clamp(y - camHeight * 0.5, 0, room_height - camHeight);

//set camera
camera_set_view_pos(view_camera[0], viewX, viewY);