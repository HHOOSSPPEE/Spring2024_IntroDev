// item constructors
function Item() constructor{
	type = "";
	value = 0;
	sprite = 0;
}
function Sword(): Item() constructor{
	type = "Sword";
	value = 15;
	sprite = spr_sword;
}
function Bow(): Item() constructor{
	type = "Bow";
	value = 10;
	sprite = spr_bow;
}
//dictionary
function InventorySearch(rootObject, itemType)
{
	for(var i = 0; i < INVENTORY_SLOTS; i++)
	{
		if(rootObject.inventory[i].type == itemType)
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
		rootObject.inventory[slot].type = "";
		return true;
	}
	else
		return false;
}

function InventoryAdd(rootObject, itemType)
{
	var slot = InventorySearch(rootObject, "");
	if(slot != -1)
	{
		rootObject.inventory[slot].type = itemType;
		return true;
	}
	else
		return false;
}

function InventorySwap(objectFrom,slotFrom,objectTo,SlotTo){
	var itemFrom = objectFrom.obj_inventory[slotFrom];
	objectFrom.obj_inventory[slotFrom]=objectTo.inventory[SlotTo];
	objectTo.obj_inventory[SlotTo] = itemFrom;
}