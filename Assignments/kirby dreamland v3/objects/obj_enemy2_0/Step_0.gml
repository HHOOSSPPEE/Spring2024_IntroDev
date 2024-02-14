if(place_meeting(x,y,obj_spawnzone))
{
	x -= xspeed;
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