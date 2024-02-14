//timer
timer -= 1;

//up
if (timer = uptimer)
{
	goUp = true;
	goDown = false;
}

//down
if (timer = downtimer)
{
	goUp = false;
	goDown = true;
}

//stop
if (timer = stoptimer)
{
	goUp = false;
	goDown = false;
}

if (timer <= 0)
{
	timer = duration;
}

//movement
if (goUp = true)
{
	y -= yspeed;
	sprite_index = spr_enemy2_fast;
}

if (goDown = true)
{
	y += yspeed;
	sprite_index = spr_enemy2;
}

//animation
if (y >= 71)
{
	sprite_index = spr_enemy2_landed;
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