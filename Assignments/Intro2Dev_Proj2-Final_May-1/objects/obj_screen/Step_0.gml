/// @description Insert description here
// You can write your code in this editor


if(interactable)
{
	image_speed = 0.5;
}
else if(interacted)
{
	image_speed = 0;
}
else
{
	image_speed = 0;
}

if(x == 1696)
{
	interactable = true;
}

if(open_door && x == 384)
{
	interacted = true;
	instance_destroy(obj_door);
}
else if (open_door && x == 1696)
{
	interacted = true;
	if(instance_exists(obj_platform))
	{
		obj_platform.move_down = true;
	}
}