if(place_meeting(x,y, obj_kirby))
{
	instance_destroy(self);
}


//timer countdown
time++;

//timer goes off
if(time == timer)
{
	//if direction is 1 then enemy moves right, but if it's -1, then move left, multiple to reset, then reset timer
	if(alternate == 1)
	{
		x += 10;
	}
	else if(alternate == -1)
	{
		x -= 10;
	}
	alternate *= -1

	time = 0
}