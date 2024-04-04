//array
/*
function InventorySearch(rootObject, itemType)
{
	for(var i = 0; i < INVENTORY_SLOTS; i++)
	{
		if(rootObject.inventory[i] == itemType)
		{
			return i;
		}
	}
	
	return -1;
}

function InventoryRemove(rootObject, itemType)
{
	var slot = InventorySearch(rootObject, itemType);
	if(slot != -1)
	{
		//with (rootObject) inventory[slot] = -1;
		rootObject.inventory[slot] = -1;
		return true;
	}
	else
		return false;
}

function InventoryAdd(rootObject, itemType)
{
	var slot = InventorySearch(rootObject, -1);
	if(slot != -1)
	{
		//with (rootObject) inventory[slot] = -1;
		rootObject.inventory[slot] = itemType;
		return true;
	}
	else
		return false;
}
*/


//dictionary
function InventorySearch(rootObject, itemType)
{
	return ds_map_find_value(rootObject.inventory, itemType);
	
	//return -1;
}

function InventoryRemove(rootObject, itemType)
{
	var amount = InventorySearch(rootObject, itemType);
	if(amount > 0)
	{
		amount--;
		ds_map_set(rootObject.inventory, itemType, amount);
		
	}
	if(amount <= 0)
	{
		//delete item from dictionary
		ds_map_delete(rootObject.inventory, itemType);
	}

}

function InventoryAdd(rootObject, itemType)
{
	var amount = InventorySearch(rootObject, itemType);
	

	if(amount == undefined)
	{
		ds_map_add(rootObject.inventory, itemType, 1);
	}
	else
	{
		amount++;
		ds_map_set(rootObject.inventory, itemType, amount);
	}
		
}
