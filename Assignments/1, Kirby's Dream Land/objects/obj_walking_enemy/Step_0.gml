//walking
if(x > 0)
{
	x = x - wSpeed;
}
if(x <= 0)
{
	instance_destroy();
}
if(place_meeting(x, y, obj_collider) 
|| !place_meeting(x-5, y+5, obj_collider)
|| !place_meeting(x+5, y+5, obj_collider))
{
	image_xscale *= -1;
	wSpeed = wSpeed * -1;
}