//showing there is a parry happening, and cooldown
if (keyboard_check_pressed(ord("2"))) && (cooldown = false)
{
	cooldown = true;
	image_angle = 10;
}
else if (keyboard_check_released(ord("2")))
{
	image_angle = 0;
}

//if your foil overlaps with the enemy, and if you parry, you have priority
if ((place_meeting(x,y,o_foil1))) && keyboard_check_pressed(ord("2")) && (timer = 0)
{
	global.priority = 2;
	global.parry = true;
}

//cool down
if (cooldown = true)
{
timer += 1;
}

if (timer = 51)
{
	cooldown = false;
	timer = 0;
}