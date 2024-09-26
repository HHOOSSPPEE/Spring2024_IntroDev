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
audio_played = 1;

dialogue_1 = "There's rumors of the Ultimate Energy hidden somewhere";
dialogue_2 = "The Ultimate Energy could cities, or cyborgs, forever";