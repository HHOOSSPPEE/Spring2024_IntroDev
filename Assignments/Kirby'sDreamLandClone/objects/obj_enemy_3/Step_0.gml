if (y < startingy - 150)
	{
		down = true
	}
	
if ((y > startingy) && down)
{
	y = startingy;
	down = false;
}

if (down) y += walksp;
if (!down) y -= walksp;