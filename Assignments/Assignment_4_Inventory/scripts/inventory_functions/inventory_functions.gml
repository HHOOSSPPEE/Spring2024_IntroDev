function inventorySearch(root_object, item_type)
{
	for(var i = 0; i < INVENTORY_SLOTS; i++)
	{
		if(root_object.inventory[i] == item_type)
		{
			return i;
		}
	}
	return -1;
}

function inventoryRemove(root_object, item_type)
{
	var slot = inventorySearch(root_object, item_type);
	if(slot != -1)
	{
		root_object.inventory[slot] = -1;
		return true;
	}
	else return false;
}

function inventoryAdd(root_object, item_type)
{
	var slot = inventorySearch(root_object, -1);
	if(slot != -1)
	{
		root_object.inventory[slot] = item_type;
		return true;
	}
	else return false;
}