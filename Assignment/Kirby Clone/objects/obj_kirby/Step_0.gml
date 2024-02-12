// inputs
var keyRight = keyboard_check(vk_right);
var keyLeft = keyboard_check(vk_left);
var keyUp = keyboard_check(vk_up);
var keyDown = keyboard_check(vk_down);
var keyJump = keyboard_check(ord("Z"));
var keyAction = keyboard_check(ord("X"));

// enable camera smoothing
if (keyRight||keyLeft||keyUp||keyDown||keyJump||keyAction){
	obj_camera.enableSmoothing = true;
}


ySpeed += grv;
// state machine
switch(state){
	case playerState.normal:
		floating=false;
		ts_animation=false;
		maxV=groundMaxV;
		maxFallV=normalMaxFall;
		
		if (keyUp){
			state = playerState.floating;
		}
		// animation
		if (isGrounded<6){
			sprite_index = spr_kirby_jump;
		}	
		else if (xSpeed==0){
			sprite_index = spr_kirby_idle;
		}
		else{
			sprite_index = spr_kirby_walk;
		}
		break;
	
	case playerState.floating:
		floating=true;
		maxV=floatMaxV;
		maxFallV=floatMaxFall;
		
		// play transformation animation
		if (!ts_animation){ 
			sprite_index = spr_kirby_fly_transform;
			freeze=true;
			ts_animation = true;
		}
		// when transformation
		if (sprite_index==spr_kirby_fly_transform){
			if (image_index>=
			(image_number-(sprite_get_speed(spr_kirby_fly_transform)/game_get_speed(gamespeed_fps)))){
				freeze=false;
				sprite_index = spr_kirby_fly;
			}
		}
		
		// fly up
		if (keyUp||keyJump){
			ySpeed = flyV;
		}
		
		// when after transformation
		if (sprite_index==spr_kirby_fly){

			if (keyUp||keyJump){
				image_speed=1;
			}
			else{
				image_speed=0.2;
			}
			if (keyAction){
				instance_create_layer(x+16*image_xscale,y-6,"instances",obj_cloud);
				sprite_index=spr_kirby_fly_attack;
				freeze=true;
				image_speed=1;// reset image speed
			}
		}
		// when attacking
		if (sprite_index==spr_kirby_fly_attack){
			if (image_index>=
			(image_number-(sprite_get_speed(spr_kirby_fly_attack)/game_get_speed(gamespeed_fps)))){

				freeze=false;
				state = playerState.normal;
			}
		}
		break;
	
	case playerState.inflated:
		floating=false;
		ts_animation=false;
		maxV=groundMaxV;
		maxFallV=normalMaxFall;
		break
}

// horizontal movement
if ((keyRight - keyLeft)!=0){
	xSpeed += (keyRight - keyLeft) * acc;
	if (abs(xSpeed) > maxV ){// limit max spped
		xSpeed = sign(xSpeed)*maxV;
	}
}
else{
	xSpeed -= sign(xSpeed)*acc/2
	if ((abs(xSpeed))<(acc/2)){
		xSpeed = 0;
	}
}


// vertical movement
if (isGrounded-->0) && (!floating) && (keyJump) && (jumpReleased){// jump if condition fulfilled
	isJumping = true;
	jumpReleased = false;
}
if (keyboard_check_released(ord("Z"))){
	jumpReleased = true;
}

if (isJumping){// enable high and low jump
	jumpTimer++;
	if (jumpTimer <=6){
		ySpeed = jumpV;
	}
	else if (jumpTimer>6 && jumpTimer<=16){
		if (keyJump){
			ySpeed = jumpV;
		}
		else{
			ySpeed += jumpDec;
			jumpTimer = 0;
			isJumping = false;
		}
	}
	else{
		ySpeed += jumpDec;
		jumpTimer = 0;
		isJumping = false;
	}		
}
ySpeed = min(ySpeed,maxFallV);// limit fall speed

// check collision 
if (place_meeting((x+xSpeed),y,obj_collision)){// horizontal
	while (abs(xSpeed)>0.1){
		xSpeed /= 2;
		if(!place_meeting((x+xSpeed),y,obj_collision)){
			x += xSpeed;
		}
	}
	xSpeed = 0;
}

if (place_meeting(x,(y+ySpeed),obj_collision)){// vertical
	if (ySpeed > 0 ){
		isGrounded = 6;
	}
	
	while (abs(ySpeed) > 0.1){
		ySpeed /= 2;
		if (!place_meeting(x,(y+ySpeed),obj_collision)){
			y += ySpeed;
		}
	}
	ySpeed = 0;
}
// be damaged if not in invincible time
if(place_meeting(x,y,obj_enemy_parent)){
	if (! invincible)
	{
		hp -= 1; 
		invincible = true;
		invincibleTimer=60;
		with(instance_place(x,y,obj_enemy_parent)){
			for (var i =0;i<ds_list_size(global.deadEnemyPath);i++){
				if (global.deadEnemyPath[|i]=noone){
					ds_list_replace(global.deadEnemyPath,i,variable_instance_get(self,"paths"));
					ds_list_replace(global.deadEnemy,i,object_index);
					listHasEmpty=true
					break;
				}
			}
			if (!listHasEmpty){
				ds_list_add(global.deadEnemyPath,variable_instance_get(self,"paths"));
				ds_list_add(global.deadEnemy,object_index);
			}
			listHasEmpty=false;
			instance_destroy();
		}
	}
}
show_debug_message("hit_point= "+string(hp));
if((hp<=0)||(place_meeting(x,y,obj_pit))){
	room_restart();
}
if(invincibleTimer--<0){
	invincible=false;
}

// animation 
if (!freeze){// disable changing direction when animation
	if (keyRight){
		image_xscale=1;
	}
	else if (keyLeft){
		image_xscale=-1;
	}
}
// inplement movement
x += xSpeed;
y += ySpeed;