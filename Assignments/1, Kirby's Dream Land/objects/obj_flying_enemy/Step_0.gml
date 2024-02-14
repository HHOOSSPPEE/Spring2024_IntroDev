//flying
if(x > 0)
{
	x = x - fSpeed;
}
if(x <= 0)
{
	instance_destroy();
}
if(place_meeting(x, y, obj_collider))
{
	image_xscale *= -1;
	fSpeed = fSpeed * -1;
}