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
	
	// hide state
	case Player2State.hide:
		acc = slowAcc;
		maxV = slowMaxV;
		break;
	
	// shoot state
	case Player2State.shoot:
		acc = slowAcc;
		maxV = slowMaxV;
		preysInScreenL = DetectPreys(preysInScreenL,preysInScreenR)[0];
		preysInScreenR = DetectPreys(preysInScreenL,preysInScreenR)[1];
		preysInScreen = array_concat(preysInScreenL,preysInScreenR)
		var closest = ClosestPrey(preysInScreenL,preysInScreenR,lastKeyPressTimeL,lastKeyPressTimeR);

		// hold to shoot
		if ((shootingTime++ > shootingThreshold)&&(canShoot)){
			// shooting make preys alert
			alarm[0] = game_get_speed(gamespeed_fps);
			CreateArrow(x,y,closest);
			shootingTime = 0;
			canShoot = false;
		}
		if (keyboard_check_released(vk_up)){// no continous shooting
			canShoot = true;
		}
		preysInScreenL =[];// empty the prey array
		preysInScreenR =[];
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
state = Hiding(keyDown,state);
state = Shooting(keyUp,state);
if (state == Player2State.hide){
	alertDistance = hideAlert;
}
else{
	alertDistance = normalAlert;
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

// vertical movement
ySpeed += grv;

// check collision 
var newXY = CollisionCheck(x,y,xSpeed,ySpeed,isGrounded);
xSpeed = newXY[0];
ySpeed = newXY[1];


// inplement movement
x += xSpeed;
y += ySpeed;