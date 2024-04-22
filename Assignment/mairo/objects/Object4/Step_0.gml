if(target != noone)
{
	Xcam = target.x;
	Ycam = target.y;
}

x += (Xcam - x)/25;
y += (Ycam - x)/25;

camera_set_view_pos(view_camera[0], x-(camera_width*0.1),y-(camera_height*0.1));