if(grow_timer >= 600){
	image_index = 0
	ripe = true;
}

if (mouse_check_button_released(mb_left)) {
	if (position_meeting(mouse_x, mouse_y, obj_apple_tree) && ripe && place_meeting(x,y, obj_player)){
		image_index = 1;
		ripe = false;
		grow_timer = 0;
		obj_inventory.inventory.item_add("Apple", 3, spr_apple);
	}
}

if (grow_timer < 600){
	grow_timer++;
}
