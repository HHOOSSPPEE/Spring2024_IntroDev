if (obj_player.state = PlayerState.inventory){
	// draw frame
	draw_sprite_stretched(spr_item_frame,0,99,100,80+8*136,
	80+(((INVENTORY_SLOTS-1) div rowLength)+1)*136);
	// draw slot
	for(var i=0; i< INVENTORY_SLOTS-1;i++){
		var xx = 130 + (i % rowLength) * 136 + 10;
		var yy = 130 + (i div rowLength) * 136 +10;
		draw_sprite(spr_slot,0,xx,yy);
		if (inventory[i]!=-1){
			draw_sprite(inventory[i].sprite,0,xx+18,yy+18)
		}
	}
}