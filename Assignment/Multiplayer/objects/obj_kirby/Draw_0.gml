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
if (state = KirbyState.run){
	image_speed = 2;
}
else{
	image_speed = 1;
}
draw_self();
