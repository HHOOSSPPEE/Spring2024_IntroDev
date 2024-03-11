if (state = KirbyState.stop){
	sprite_index = spr_prey_idle;
}
else{
	if (dir<0){
		image_xscale = -1;
		sprite_index = spr_prey_walk;
	}
	else if(dir>0){
		image_xscale = 1;
		sprite_index = spr_prey_walk;
	}
}
draw_self();
