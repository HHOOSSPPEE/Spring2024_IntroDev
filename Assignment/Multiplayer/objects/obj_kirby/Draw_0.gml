if (xSpeed<0){
	sprite_index = spr_prey_walk;
	image_xscale = -1;
}
else if(xSpeed>0){
	sprite_index = spr_prey_walk;
	image_xscale = 1;
}
else{
	sprite_index = spr_prey_idle;
}
draw_self();
