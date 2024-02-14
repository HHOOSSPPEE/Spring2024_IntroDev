//flying
if(x > 0)
{
	x = x - b1Speed;
}
if(x <= 0)
{
	instance_destroy();
}
if(place_meeting(x, y, obj_collider))
{
	image_xscale *= -1;
	b1Speed = b1Speed * -1;
}