/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x, y, obj_manager.collidables))
{
	instance_destroy();
}

if(image_xscale >= 0)
{
	x += 10;
}
else if (image_xscale <= 0)
{
	x -= 10;
}