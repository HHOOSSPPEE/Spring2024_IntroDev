if (obj_player.state == PlayerState.inventory){
	// draw frame
	draw_sprite_stretched(spr_item_frame,0,360,100,80+rowLength*136,
	80+(((INVENTORY_SLOTS-1) div rowLength)+1)*136);
	// draw slot
	for(var i=0; i< INVENTORY_SLOTS;i++){
		var xx = 400+ (i % rowLength) * 136;
		var yy = 140 + (i div rowLength) * 136;
		// if hovering, draw differently
		var hover = (obj_mouse.inventoryHover == id) && (obj_mouse.slotHover == i);
		draw_sprite(spr_slot,hover,xx,yy);
		if (inventory[i]!=-1){
			
			if ((obj_mouse.inventoryDrag == id) && (obj_mouse.slotDrag == i)){
				draw_set_alpha(0.5);
			}
			// resize item sprites
			var sprite = inventory[i].sprite;
			var ratio = sprite_get_width(sprite)/sprite_get_height(sprite);
			if (ratio > 1){
				draw_sprite_stretched(sprite,0,xx+30,yy+30,80,80/ratio);
			}
			else{
				draw_sprite_stretched(sprite,0,xx+30,yy+30,80*ratio,80);
			}
			draw_set_alpha(1.0);
		}
	}
}