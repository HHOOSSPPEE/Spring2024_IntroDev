// facing direction
var keyRight = keyboard_check(ord("D"));
var keyLeft = keyboard_check(ord("A"));
if (keyRight-keyLeft>0){
	image_xscale=1;
}
else if (keyLeft-keyRight>0){
	image_xscale=-1;
}
// sprite change
if (xSpeed=0){
	sprite_index = spr_dog_idle;
}
else{
	sprite_index = spr_dog_walk;
	if(state=Player1State.dash){
		image_speed = 2;
	}
	else{
		image_speed = 1;
	}
}
// stretch
if (state=Player1State.drag){
	image_yscale=0.5;
}
else if (state=Player1State.sniff){
	image_yscale=1.5;
}
else{
	image_yscale=1;
}
draw_self();
