image_speed = 0.15;

turning_timer = irandom_range(500, 700);
turning_cd = turning_timer;

var rand_dir = 0;
if (irandom(1) == 1)
{
	rand_dir = 1;
}	
else rand_dir = -1;
image_xscale *= rand_dir;


dialogue_location = 1;
conversing = false;
spoken_to = false;

dialogue_x = 300;
dialogue_y = 1200;

dialogue_1 = "The Ultimate Energy attracts an evil force of JEALOUSY";
dialogue_2 = "Are you sure you want it?";
dialogue_3 = "The vault is unlocked for you";