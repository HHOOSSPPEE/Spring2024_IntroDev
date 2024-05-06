if (place_meeting(x - 10, y, obj_player) && keyboard_check(vk_space) && global.redKey)
{
	instance_destroy();
	global.redDoor = false;
	for (var i = 0; i < array_length(obj_inventory_key.key_inventory); i++)
	{
		if (obj_inventory_key.key_inventory[i].name == "Red Key")
		{
			var selected_item = i;
		}
	}
	array_delete(obj_inventory_key.key_inventory, selected_item, 1);
}

if (!global.redDoor) instance_destroy();