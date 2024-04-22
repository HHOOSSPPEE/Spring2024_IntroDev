if (grow_timer <= grow_time){
	grow_timer++;
}

if(grow_timer >= 1200){
	image_index = 3;
	ripe = true;
}

if (mouse_check_button_released(mb_left)) {
	if (position_meeting(mouse_x, mouse_y, obj_wheat_plant) && ripe && place_meeting(x,y, obj_player)){
		image_index = 0;
		ripe = false;
		grow_timer = 0;
		obj_inventory.inventory.item_add("Wheat", 5, spr_wheat);
	}
}

if (grow_timer >= 800 && grow_timer < 1200){
	image_index = 2
}
if (grow_timer >= 400 && grow_timer < 800){
	image_index = 1;
}
if (grow_timer <= 0 && grow_timer < 400){
	image_index = 0;
}
