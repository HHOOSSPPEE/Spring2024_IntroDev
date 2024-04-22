if(grow_timer >= 700){
	image_index = 0
	ripe = true;
}

if (mouse_check_button_released(mb_left)) {
	if (position_meeting(mouse_x, mouse_y, obj_berry_bush) && ripe && place_meeting(x,y, obj_player)){
		image_index = 1;
		ripe = false;
		grow_timer = 0;
		obj_inventory.inventory.item_add("Berries", 3, spr_berries);
	}
}

if (grow_timer < 700){
	grow_timer++;
}
