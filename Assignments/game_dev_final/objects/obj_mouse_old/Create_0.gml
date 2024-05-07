/*inventoryHover = -1;
slotHover = -1;
inventoryDrag = -1;
slotDrag = -1;
itemDrag = -1;

mouseOver = function()
{
	//empty hover results
	slotHover = -1;
	inventoryHover = -1;
	
	//mouse coordinates
	var mx = mouse_x;
	var my = mouse_y;

	//check for inventory slot hover
		with (obj_inventory_old){
		if (point_in_rectangle(mx,my,obj_inventory_old.x + 30, obj_inventory_old.y + 30,570+rowLength*136,
		570+(((INVENTORY_SLOTS-1) div rowLength)+1)*136)){
			// check for mouseover in each slot
			for(var i=0; i< INVENTORY_SLOTS;i++){
				var xx = obj_inventory_old.x + (i % rowLength) * 136;
				var yy = obj_inventory_old.y + (i div rowLength) * 136;
				if (point_in_rectangle(mx,my,xx+8,yy+8,xx+128,yy+128)){
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
	//start to drag an item if slot is not empty
	if (mouse_check_button(mb_left)) && (slotHover != -1) && (inventoryHover.inventory[slotHover] != -1)
	{
		//Enter drag state
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
		if (slotHover != -1) 
		{
			InventorySwap(inventoryDrag,slotDrag,inventoryHover,slotHover)
		}
		//Return to free state
		state = stateFree;
		itemDrag = -1;
		inventoryDrag = -1;
		slotDrag = -1;
	}
}

state = stateFree;