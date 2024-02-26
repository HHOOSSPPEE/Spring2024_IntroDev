if(target != noone)
{
	xCam = target.x;
	yCam = target.y;
}

//camera smoothing
x += (xCam - x)/3;
y += (yCam - y)/3;


//image scale

//size -=.01
   
image_xscale = 1
image_yscale = 1

//visiable
visible = false;

if global.gun = true
{
	visible = true;
}