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

//collision with bullet
if place_meeting(x,y,obj_puff)
{	
	//destroys specific bullet that collided
	var _inst = instance_place(x,y,obj_puff)
	
	with(_inst)
	{
		instance_destroy();
	}
	//then destroys self
	instance_destroy();
}