//fly
if(place_meeting(x-5, y, obj_kirby))
{
	y = y - ySpeed;
	sprite_index = spr_bird_1;
	
}
if(y < 72)
{
	x = x - xSpeed;
	sprite_index = spr_bird_1;
}
if(place_meeting(x, y, obj_collider))
{
	image_xscale *= -1;
	xSpeed = xSpeed * -1;
}