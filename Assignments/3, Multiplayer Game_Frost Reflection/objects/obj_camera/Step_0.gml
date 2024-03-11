//update destination
if(instance_exists(target))
{
	xCam = target.x;
	yCam = target.y;
}

//update object position
x += (xCam - x) / 25;
y += (yCam - y) / 25;

//clamp camera coordinates to stay within the room
x = clamp(x, view_half_w, room_width-view_half_w);
y = clamp(y, view_half_h, room_height-view_half_h);

//update camera view
camera_set_view_pos(cam, x-view_half_w, y-view_half_h);