var startX = x;
x += prjSpeed;



var inst = instance_place(x, y, obj_enemies);
if inst != noone
{
	with (inst)
	{
		instance_destroy();
	}
	instance_destroy();
}