// facing direction
var keyRight = keyboard_check(vk_right);
var keyLeft = keyboard_check(vk_left);
if (keyRight-keyLeft>0){
	image_xscale=1;
}
else if (keyLeft-keyRight>0){
	image_xscale=-1;
}
// sprite change
if (xSpeed=0){
	sprite_index = spr_hunter_idle;
}
else{
	sprite_index = spr_hunter_walk;
	if(state=Player2State.dash){
		image_speed = 2;
	}
	else{
		image_speed = 1;
	}
}
// shoot
if (state = Player2State.shoot && canShoot){
	if (!shootingAnimation){
		image_index =0;
		shootingAnimation = true;
	}
	sprite_index = spr_hunter_shoot;
}
// stretch
if (state=Player2State.hide){
	image_yscale=0.5;
}
else{
	image_yscale=1;
}
draw_self();
