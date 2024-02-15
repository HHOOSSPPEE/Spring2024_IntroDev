//check for the presence of an instance: != noone
if(target != noone)
{
	xCam = target.x;
	yCam = target.y;
}

if(x < camWidth * 0.5) x = camWidth * 0.5;

//camera smoothing
x += (xCam - x)/12.5;
y += (yCam - y)/25;

//camera_set_view_pos(view_camera[0], x-(camWidth * .5), y-(camHeight * .5));


// Clamp camera coordinates to stay within the room
//x = clamp(x, camWidth * 0.5, room_width - camWidth * 0.5);
//y = clamp(y, camHeight * 0.5, room_height - camHeight * 0.5);


var viewX = clamp(x - camWidth * 0.5, 0, room_width - camWidth);
var viewY = clamp(y - camHeight * 0.5, 0, room_height - camHeight);

// Set the camera view position
camera_set_view_pos(view_camera[0], viewX, viewY);