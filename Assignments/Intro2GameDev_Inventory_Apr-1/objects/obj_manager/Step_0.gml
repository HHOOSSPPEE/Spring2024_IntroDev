spawn_cd--;

if(spawn_cd <= 0)
{
	instance_create_layer(1952, 768, "Instances", obj_materials);
	spawn_cd = spawn_timer;
}


if(array_length(obj_inventory.list.inventory_items) == 0)
{
	if(!instance_exists(obj_dishes))
	{
		instance_create_layer(500, 200, "Instances", obj_dishes);
	}
	
	if(instance_exists(obj_dishes))
	{
		delay_cd--;
		if(delay_cd <= 0)
		{
			instance_destroy(obj_dishes);
			_score++;
			delay_cd = delay_timer;
		}
	}
}
