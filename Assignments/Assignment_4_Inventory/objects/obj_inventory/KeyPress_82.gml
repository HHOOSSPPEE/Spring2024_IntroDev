if (obj_player.farmer_jo)
{
	for (var i = 0; i < INVENTORY_SLOTS; i++)
	{
		if (inventory[i] = 0 || inventory[i] = 1 || inventory[i] = 2)
		{
			inventoryRemove(id, 0);
			inventoryRemove(id, 1);
			inventoryRemove(id, 2);
		}
	}
}

if (obj_player.farmer_world)
{
	for (var i = 0; i < INVENTORY_SLOTS; i++)
	{
		if (inventory[i] = 3 || inventory[i] = 4 || inventory[i] = 5)
		{
			inventoryRemove(id, 3);
			inventoryRemove(id, 4);
			inventoryRemove(id, 5);
		}
	}
}