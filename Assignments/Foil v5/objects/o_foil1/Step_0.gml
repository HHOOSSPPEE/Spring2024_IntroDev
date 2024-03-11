//showing there is a parry happening, and cooldown
if (keyboard_check_pressed(ord("P"))) && (cooldown = false)
{
	cooldown = true;
	image_angle = -10;
}
else if (keyboard_check_released(ord("P")))
{
	image_angle = 0;
}

//if your foil overlaps with the enemy, and if you parry, you have priority
if ((place_meeting(x,y,o_foil2))) && (keyboard_check_pressed(ord("P"))) && (timer = 0)
{
	global.priority = 1;
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