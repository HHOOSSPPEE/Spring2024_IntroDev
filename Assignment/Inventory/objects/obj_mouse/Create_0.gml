// mouse state
inventoryHover = -1;
slotHover = -1;
inventoryDrag = -1;
slotDrag = -1;
itemDrag = -1;
mouseClick = mouse_check_button(mb_left);

mouseOver = function(){
	// empty hover result
	slotHover = -1;
	inventoryHover = -1;
	
	// mouse coordinates
	var	mx = mouseX;
	var my = mouseY;
	
	// check for inventory slot hover
	with (obj_inventory){
		if (point_in_rectangle(mx,my,130,130,210+rowLength*136,
		210+(((INVENTORY_SLOTS-1) div rowLength)+1)*136)){
			// check for mouseover in each slot
			for(var i=0; i< INVENTORY_SLOTS-1;i++){
				var xx = 130 + (i % rowLength) * 136 + 10;
				var yy = 130 + (i div rowLength) * 136 + 10;
				if (point_in_rectangle(mx,my,xx+18,yy+18,xx+118,yy+118)){
					other.slotHover = i;
					other.inventoryHover = id;
				}
			}
		}
	}
}

stateFree = function(){
	mouseOver();
	// start to drag an item if slot is not empty
	if (mouseClick&&)