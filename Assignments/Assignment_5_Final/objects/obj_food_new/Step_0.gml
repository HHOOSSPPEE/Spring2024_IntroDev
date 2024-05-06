sprite_index = item.sprite;

if (array_length(obj_inventory.inventory) < obj_inventory.inventory_max)
{
	if (place_meeting(x, y, obj_player) && keyboard_check(vk_space))
	{
		item_add(item);
		instance_destroy();
	}
}


