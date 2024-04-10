// item constructors
function Item() constructor{
	type = "";
	dmg = 0;
	cd = 0;
	sprite = 0;
	equiped = false;
}
function Pistol(): Item() constructor{
	type = "Pistol";
	dmg = 5;
	cd = 30;
	sprite = spr_pistol;
}
function Uzi(): Item() constructor{
	type = "Uzi";
	dmg = 2;
	cd = 10;
	sprite = spr_uzi;
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
	var itemFrom = objectFrom.inventory[slotFrom];
	objectFrom.inventory[slotFrom]=objectTo.inventory[SlotTo];
	objectTo.inventory[SlotTo] = itemFrom;
}