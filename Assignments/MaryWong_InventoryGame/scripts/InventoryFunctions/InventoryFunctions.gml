function InventorySearch(rootObject, itemType)
{
	for(var i = 1; i < INVENTORY_SLOTS; i++)
	{
		if(rootObject.inventory[i] == itemType)
		{
			return (i);
		}
	}
	return (-1);
}

function InventoryRemove(rootObject, itemType)
{
	var slot = InventorySearch(rootObject, itemType);
	if (slot != -1)
	{
		with (rootObject) inventory[slot] = -1;
		//with - same thing as rootObject.inventory[slot] = -1;
		return true;
	}
	else return false;
}

function InventoryAdd(rootObject, itemType)
{
	var slot = InventorySearch(rootObject, -1);
	if (slot != -1)
	{
		with (rootObject) inventory[slot] = itemType;
		return true;
	}
	else return false;
}

function InventorySwap(objectFrom, slotFrom, objectTo, slotTo)
{
	var itemFrom = objectFrom.inventory[slotFrom]
	objectFrom.inventory[slotFrom] = objectTo.inventory[slotTo];
	objectTo.inventory[slotTo] = itemFrom;
	
}

//function CheckItemReturn(itemType)
//{
//	if (inventory[0] != -1)
//	{
//		if (inventory[0] == itemType)
//		{
//			obj_inventory.correctItem = true;
//		}
//		//else obj_inventory.correctItem = false;
//	}
//}

function RandomAddItem()
{
	var num = irandom(500);
	if (num > 490)
	{
		InventoryAdd(id, (irandom(obj_inventory.itemCount)))
	}
	
}