turning_timer = irandom_range(500, 700);
turning_cd = turning_timer;

var rand_dir = 0;
if (irandom(1) == 1)
{
	rand_dir = 1;
}	
else rand_dir = -1;
image_xscale *= rand_dir;

image_speed = 0;