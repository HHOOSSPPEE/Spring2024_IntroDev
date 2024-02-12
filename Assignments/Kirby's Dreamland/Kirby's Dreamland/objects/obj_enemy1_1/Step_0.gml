//timer stuff
timer -= 1;

if (timer = half)
{
	goRight = true;
	goLeft = false;
}

if (timer = whole)
{
	goRight = false;
	goLeft = true;
	x += xspeed;
}

if (timer <= 0)
{
	timer = duration;
}

//movement

if (goRight = true)
{
	x -= xspeed;
	image_xscale = 1
	sprite_index = spr_enemy1
}

if (goLeft = true)
{
	x += xspeed;
	image_xscale = -1
	sprite_index = spr_enemy1
}