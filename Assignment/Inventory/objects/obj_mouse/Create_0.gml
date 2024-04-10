// mouse state
inventoryHover = -1;
slotHover = -1;
inventoryDrag = -1;
slotDrag = -1;
itemDrag = -1;

mouseOver = function(){
	// empty hover result
	slotHover = -1;
	inventoryHover = -1;
	
	// mouse coordinates
	var	mx = mouse_x;
	var my = mouse_y;
	
	// check for inventory slot hover
	with (obj_inventory){
		if (point_in_rectangle(mx,my,390,130,570+rowLength*136,
		570+(((INVENTORY_SLOTS-1) div rowLength)+1)*136)){
			// check for mouseover in each slot
			for(var i=0; i< INVENTORY_SLOTS;i++){
				var xx = 400 + (i % rowLength) * 136;
				var yy = 140 + (i div rowLength) * 136;
				if (point_in_rectangle(mx,my,xx+8,yy+8,xx+128,yy+128)){
					other.slotHover = i;
					other.inventoryHover = id;
				}
			}
		}
	}
	with (obj_equipment){
		if (point_in_rectangle(mx,my,214,148,334,268)){
				other.slotHover = 0;
				other.inventoryHover = id;
		}
	}
}

stateFree = function(){
	mouseOver();
	// start to drag an item if slot is not empty
	if (mouse_check_button(mb_left) && (slotHover != -1) && (inventoryHover.inventory[slotHover] != -1)){
		state = stateDrag;// change state
		itemDrag = inventoryHover.inventory[slotHover];
		inventoryDrag = inventoryHover;
		slotDrag = slotHover;
	}
}

stateDrag = function(){
	mouseOver();
	if(!mouse_check_button(mb_left)){
		// swap items
		if (slotHover != -1){
			InventorySwap(inventoryDrag,slotDrag,inventoryHover,slotHover)
		}
		state = stateFree;// change state
		itemDrag = -1;
		inventoryDrag = -1;
		slotDrag = -1;
	}
}
// initial state
state = stateFree;