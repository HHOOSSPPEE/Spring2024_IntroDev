//x timer stuff
xtimer -= 1;

if (xtimer = xhalf)
{
	goRight = true;
	goLeft = false;
}

if (xtimer = xwhole)
{
	goRight = false;
	goLeft = true;
	x += xspeed;
}

if (xtimer <= 0)
{
	xtimer = xduration;
}

//x movement

if (goRight = true)
{
	x -= xspeed;
}

if (goLeft = true)
{
	x += xspeed;
}




//y timer stuff
ytimer -= 1;

if (ytimer = yhalf)
{
	goUp = true;
	goDown = false;
}

if (ytimer = ywhole)
{
	goUp = false;
	goDown = true;
	y += yspeed;
}

if (ytimer <= 0)
{
	ytimer = yduration;
}

//x movement

if (goUp = true)
{
	y -= yspeed;
}

if (goDown = true)
{
	y += yspeed;
}