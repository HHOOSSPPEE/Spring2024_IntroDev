if(target != noone)
{
	xCam = target.x;
	yCam = target.y;
}

//follow kirby
x += (xCam - x);
y += (yCam - y);
