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
	sprite_index = spr_enemy5
}

if (goLeft = true)
{
	x += xspeed;
	image_xscale = -1
	sprite_index = spr_enemy5
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