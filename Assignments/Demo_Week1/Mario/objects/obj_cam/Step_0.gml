if(target!=noone)
{
	xCam=target.x;
	yCam=target.y;
}
x+=(xCam-x);
if (x < 0+camWidth/2) {
    x = 0+camWidth/2;
} else if (x > roomWidth - camWidth/2) {
    x = roomWidth - camWidth/2;
}





camera_set_view_pos(view_camera[0],x-(camWidth*0.5),y-(camHeight*.5));










