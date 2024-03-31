if (obj_player.state = PlayerState.inventory){
	if (itemDrag != -1){
		var sprite = itemDrag.sprite;
		var ratio = sprite_get_width(sprite)/sprite_get_height(sprite);
		if (ratio > 1){
			draw_sprite_stretched(sprite,0,mouse_x-40,mouse_y-40/ratio,80,80/ratio);
		}
		else{
			draw_sprite_stretched(sprite,0,mouse_x-40*ratio,mouse_y-40,80*ratio,80);
		}
	}
}