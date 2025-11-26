// inputs
var keyRight = keyboard_check(vk_right);
var keyLeft = keyboard_check(vk_left);
var keyUp = keyboard_check(vk_up);
var keyDown = keyboard_check(vk_down);
// enable camera smoothing after player move
if (keyRight||keyLeft||keyUp||keyDown){
	obj_camera.enableSmoothing=true;
}

// state machine
show_debug_message(state);
show_debug_message("canShoot: "+ string(canShoot));
show_debug_message("shootNow: "+ string(shootNow));
switch (state){
	// dash state
	case Player2State.dash:
		acc = dashAcc;
		maxV = dashMaxV;
		// spend dash energy during dashing state
		var newDashInfo = DashCountdown(dashEnergy,tired,doubleClickedR,doubleClickedL);
		tired = newDashInfo[0];
		doubleClickedL = newDashInfo[1];
		doubleClickedR = newDashInfo[2];
		dashEnergy = newDashInfo[3];
		break;
	
	// walk state
	case Player2State.walk:
		acc = walkAcc;
		maxV = walkMaxV;
		// recover dash energy during walking state
		var newDashInfo = DashRecovery(dashEnergy,tired);
		dashEnergy = newDashInfo[0];
		tired = newDashInfo[1];
		break;
		
	// shoot state
	case Player2State.shoot:
		acc = slowAcc;
		maxV = slowMaxV;
		if (keyUp){
			holdTime++
			shootingHold = true;
		}
		if (holdTime>holdTimeThreshold){// enable shooting after holding enough time
			canShoot = true;
		}
		if (keyboard_check_released(vk_up)) {
			holdTimeTemp = holdTime;
			holdTime = 0;
		    shootingHold = false;
			shootQueued = true;
		}	
		// shoot when release
		if (shootNow) {
			var distance = (min(holdTimeTemp*10,1200)-holdTimeThreshold*10+100)*image_xscale
		    CreateArrow(x+sprite_width/2,y-sprite_height/2,distance);
			holdTimeTemp = 0;
			canShoot = false;
			shootNow = false;	
		} 
		break;	
}

// check if double-clicked
var resultR = DoubleClick(vk_right, lastKeyPressTimeR, doubleClickThreshold,doubleClickedR,tired);
doubleClickedR = resultR[0];
lastKeyPressTimeR = resultR[1];// record last time player pressed d for next check
var resultL = DoubleClick(vk_left, lastKeyPressTimeL, doubleClickThreshold,doubleClickedL,tired);
doubleClickedL = resultL[0];
lastKeyPressTimeL = resultL[1];// record last time player pressed a for next check
	
// change state
state = SpeedChange(state,doubleClickedL,doubleClickedR,tired,dashEnergy,Player2State.dash,Player2State.walk);
if (shootQueued){
	state = Player2State.shoot;
} 
else {
    state = Shooting(keyUp, state);
}

// horizontal movement
if ((keyRight - keyLeft)!=0){// accelerate
	xSpeed += (keyRight - keyLeft) * acc;
	if (abs(xSpeed) > maxV ){// limit max spped
		xSpeed = sign(xSpeed)*maxV;
	}
}
else{// decelerate
	xSpeed -= sign(xSpeed)*acc/2
	if ((abs(xSpeed))<(acc/2)){
		xSpeed = 0;
	}
}
// hungry control
hungry ++;

// vertical movement
ySpeed += grv;

// check collision 
var newXY = CollisionCheck(x,y,xSpeed,ySpeed,isGrounded);
xSpeed = newXY[0];
ySpeed = newXY[1];


// inplement movement
x += xSpeed;
y += ySpeed;