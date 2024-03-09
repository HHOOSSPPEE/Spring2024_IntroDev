// inputs
var keyRight = keyboard_check(ord("D"));
var keyLeft = keyboard_check(ord("A"));
var keyUp = keyboard_check(ord("W"));
var keyDown = keyboard_check(ord("S"));

// enable camera smoothing after player move
if (keyRight||keyLeft||keyUp||keyDown){
	obj_camera.enableSmoothing=true;
}

// state machine
switch (state){
	// dash state
	case Player1State.dash:
		acc = dashAcc;
		maxV = dashMaxV;
		// spend dash energy during dashing state
		var newDashInfo = DashCountdown(dashEnergy,tired,doubleClickedA,doubleClickedD);
		tired = newDashInfo[0];
		doubleClickedA = newDashInfo[1];
		doubleClickedD = newDashInfo[2];
		dashEnergy = newDashInfo[3];
		break;
	
	// walk state
	case Player1State.walk:
		acc = walkAcc;
		maxV = walkMaxV;
		// recover dash energy during walking state
		var newDashInfo = DashRecovery(dashEnergy,tired);
		dashEnergy = newDashInfo[0];
		tired = newDashInfo[1];
		break;
	
	// hide state
	case Player1State.drag:
		acc = slowAcc;
		maxV = slowMaxV;
		break;
	
	// sniff state
	case Player1State.sniff:
		acc = slowAcc;
		maxV = slowMaxV;
		preyLeft = PreysTracking()[0];
		preyRight = PreysTracking()[1];
		// hold to sniff
		//if (sniffingTime++ <= 100){
		//	shootingTime = 0;
		//	canShoot = false;
		//}
		break;
}

// check if double-clicked
var resultD = DoubleClick(ord("D"), lastKeyPressTimeD, doubleClickThreshold,doubleClickedD,tired);
doubleClickedD = resultD[0];
lastKeyPressTimeD = resultD[1];// record last time player pressed d for next check
var resultA = DoubleClick(ord("A"), lastKeyPressTimeA, doubleClickThreshold,doubleClickedA,tired);
doubleClickedA = resultA[0];
lastKeyPressTimeA = resultA[1];// record last time player pressed a for next check
	
// change state
state = SpeedChange(state,doubleClickedA,doubleClickedD,tired,dashEnergy,Player1State.dash,Player1State.walk);
state = Sniffing(keyUp,state);
state = Dragging(keyDown,state);

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