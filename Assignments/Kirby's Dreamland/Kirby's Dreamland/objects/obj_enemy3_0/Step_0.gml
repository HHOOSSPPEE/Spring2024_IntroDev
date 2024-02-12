//timer stuff
timer -= 1;

if (timer = half)
{
	goUp = true;
	goDown = false;
}

if (timer = whole)
{
	goUp = false;
	goDown = true;
}

if (timer <= 0)
{
	timer = duration;
}

//movement

if (goUp = true)
{
	y -= yspeed;
}

if (goDown = true)
{
	y += yspeed;
}