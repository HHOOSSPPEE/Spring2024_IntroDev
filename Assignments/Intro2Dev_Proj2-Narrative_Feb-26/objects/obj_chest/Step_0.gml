/// @description Insert description here
// You can write your code in this editor

if(unopened)
{
	if(open)
	{
		image_speed = 0.25;	
	}
}


if(image_index >= image_number - 1)
{
	if(unopened)
	{
		image_speed = 0;
		instance_create_layer(x, y - sprite_height - 2, "Instances", obj_treasure);
		unopened = false;
	}
}