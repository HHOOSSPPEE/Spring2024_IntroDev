if (place_meeting(x - 10, y, obj_player) && keyboard_check(vk_space) && global.yellowKey)
{
	instance_destroy();
	global.yellowDoor = false;
	for (var i = 0; i < array_length(obj_inventory_key.key_inventory); i++)
	{
		if (obj_inventory_key.key_inventory[i].name == "Yellow Key")
		{
			var selected_item = i;
		}
	}
	array_delete(obj_inventory_key.key_inventory, selected_item, 1);
}

if (!global.yellowDoor) instance_destroy();