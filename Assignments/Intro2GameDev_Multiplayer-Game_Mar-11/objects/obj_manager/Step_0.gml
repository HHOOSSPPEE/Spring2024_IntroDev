/// @description Insert description here
// You can write your code in this editor


if(p1_state == false)
{
	var p1 = instance_create_layer(p1_spawnpt_x, spawnpt_y, "Instances", obj_biker_p1);
	with p1
	{
		p_type = 1;
	}
	p1_state = true;
}


if(p2_state == false)
{
	var p2 = instance_create_layer(p2_spawnpt_x, spawnpt_y, "Instances", obj_cyborg_p2);
	with p2
	{
		p_type = 2;
	}
	p2_state = true;
}