if(target != noone)
{
	xCam = target.x;
	yCam = target.y;
}

//camera smoothing
x += (xCam - x)/3;
y += (yCam - y)/3;


if global.counter = 5
{
	visible = true;
}