if (obj_player.state = PlayerState.inventory){
	// draw frame
	draw_sprite_stretched(spr_item_frame,0,184,118,180,
	180);
	// if hovering, draw differently
	var hover = (obj_mouse.inventoryHover == id) && (obj_mouse.slotHover == 0);
	draw_sprite(spr_slot,hover,206,140);
	if (inventory[0]!=-1){
			
		if ((obj_mouse.inventoryDrag == id) && (obj_mouse.slotDrag == 0)){
			draw_set_alpha(0.5);
		}
		// resize item sprites
		var sprite = inventory[0].sprite;
		var ratio = sprite_get_width(sprite)/sprite_get_height(sprite);
		if (ratio > 1){
			draw_sprite_stretched(sprite,0,234,170,80,80/ratio);
		}
		else{
			draw_sprite_stretched(sprite,0,234,170,80*ratio,80);
		}
		draw_set_alpha(1.0);
	}
}