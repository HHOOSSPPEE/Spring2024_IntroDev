inventoryHover = -1;
slotHover = -1;
inventoryDrag = -1;
slotDrag = -1;
itemDrag = -1;
rowLength = obj_inventory.rowLength;
margin = obj_inventory.margin;
slotSeparation = obj_inventory.slotSeparation;


mouseOver = function()
{
	//empty hover results
	slotHover = -1;
	inventoryHover = -1;
	
	//mouse coordinates
	var mx = mouse_x;
	var my = mouse_y;
	
	//check for inventory slot hover
	with (obj_inventory)
	{
		if (point_in_rectangle
		(
			mx,
			my,
			x-margin,
			y-margin,
			(x-margin) + obj_inventory.invHeight,
			(y-margin) + obj_inventory.invWidth
		))
		{
			//check for mouse over in each slot
			for (var i = 0; i < INVENTORY_SLOTS; i++)
			{
				var xx = x + (i mod rowLength) * (sprite_get_width(spr_slot) + slotSeparation) + (slotSeparation/2);
				var yy = y + (i div rowLength) * (sprite_get_height(spr_slot) + slotSeparation) + (slotSeparation/2) + obj_inventory.scrolling_y;
				if (point_in_rectangle(mx, my, xx, yy, xx+sprite_get_width(spr_slot), yy+sprite_get_height(spr_slot)))
				{
					other.slotHover = i;
					other.inventoryHover = id;
				}
			}
		}
	}
}

stateFree = function()
{
	mouseOver();
	if (mouse_check_button(mb_left)) && (slotHover != -1) && (inventoryHover.inventory[slotHover] != -1)
	{
		//enter drag state
		state = stateDrag;
		itemDrag = inventoryHover.inventory[slotHover];
		inventoryDrag = inventoryHover;
		slotDrag = slotHover;
	}
}

stateDrag = function()
{
	mouseOver();
	if (!mouse_check_button(mb_left))
	{
		//swap with slot if hovering
		if (slotHover != -1) InventorySwap(inventoryDrag, slotDrag, inventoryHover, slotHover)
		
		//return to free state
		state = stateFree;
		itemDrag = -1;
		inventoryDrag = -1;
		slotDrag = -1;
	}
}

state = stateFree;