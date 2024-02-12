
if(num < 2)
{
if(place_meeting(x, y + sprite_height + 1, obj_mario))
{
	instance_create_layer(x, y, "Instances", obj_mushroom);
}
num--;
}