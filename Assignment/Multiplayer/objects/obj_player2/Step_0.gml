
// inputs
var keyRight = keyboard_check(vk_right);
var keyLeft = keyboard_check(vk_left);
var keyUp = keyboard_check(vk_up);
var keyDown = keyboard_check(vk_down);

// enable camera smoothing after player move
if (keyRight||keyLeft||keyUp||keyDown){
	obj_camera.enableSmoothing=true;
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
ySpeed += grv;
if (isGrounded-->0) && (keyUp) && (jumpReleased){// jump if condition fulfilled
	isJumping = true;
	jumpReleased = false;
}
if (keyboard_check_released(vk_up)){
	jumpReleased = true;
}

if (isJumping){// enable high and low jump
	jumpTimer++;
	if (jumpTimer <=6){
		ySpeed = jumpV;
	}
	else if (jumpTimer>6 && jumpTimer<=14){
		if (keyUp){
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
if (place_meeting((x+xSpeed),y,par_collision)){// horizontal
	while (abs(xSpeed)>0.1){
		xSpeed /= 2;
		if(!place_meeting((x+xSpeed),y,par_collision)){
			x += xSpeed;
		}
	}
	xSpeed = 0;
}

if (place_meeting(x,(y+ySpeed),par_collision)){// vertical
	if (ySpeed > 0 ){
		isGrounded = 6;
	}
	
	while (abs(ySpeed) > 0.1){
		ySpeed /= 2;
		if (!place_meeting(x,(y+ySpeed),par_collision)){
			y += ySpeed;
		}
	}
	ySpeed = 0;
}

// inplement movement
x += xSpeed;
y += ySpeed;