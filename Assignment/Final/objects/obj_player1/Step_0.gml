// inputs
var keyRight = keyboard_check(ord("D"));
var keyLeft = keyboard_check(ord("A"));
var keyDown = keyboard_check(ord("S"));

// enable camera smoothing after player move
if (keyRight||keyLeft||keyDown){
	obj_camera.enableSmoothing=true;
}

// state machine
switch (state){
	// left state
	case Player1State.left:
		preysInScreenL = DetectPreys1(preysInScreenL,preysInScreenR)[0];
		preysInScreenR = DetectPreys1(preysInScreenL,preysInScreenR)[1];
		closest = ClosestPrey1(preysInScreenL,preysInScreenR,1,0);
		if (closest < -150 ){
			acc = dashAcc;
			maxV = dashMaxV;
			dir = -1
		}
		else if (closest >= -150 && closest < -100){
			acc = 0;
			maxV = 0;
		}
		else if (closest >= -100 && closest <0){
			acc = dashAcc;
			maxV = dashMaxV;
			dir = 1 
		}
		else{
			acc = 0;
			maxV = 0;
		}
		preysInScreenL = [];
		preysInScreenR = [];
		break;
	
	// right state
	case Player1State.right:
		preysInScreenL = DetectPreys1(preysInScreenL,preysInScreenR)[0];
		preysInScreenR = DetectPreys1(preysInScreenL,preysInScreenR)[1];
		closest = ClosestPrey1(preysInScreenL,preysInScreenR,0,1);
		if (closest > 150 ){
			acc = dashAcc;
			maxV = dashMaxV;
			dir = 1
		}
		else if (closest <= 150 && closest > 100){
			acc = 0;
			maxV = 0;
		}
		else if (closest <= 100 && closest > 0){
			acc = dashAcc;
			maxV = dashMaxV;
			dir = -1 
		}
		else{
			acc = 0;
			maxV = 0;
		}
		preysInScreenL = [];
		preysInScreenR = [];
		break;
	
	// stay state
	case Player1State.stay:
		acc = 0;
		maxV = 0;
		break;
}
// change state
if (keyLeft){state = Player1State.left;}
if (keyRight){state = Player1State.right;}
if (keyDown){state = Player1State.stay;}

// horizontal movement
if (acc!=0){// accelerate
	xSpeed += dir * acc;
	if (abs(xSpeed) > maxV ){// limit max spped
		xSpeed = sign(xSpeed)*maxV;
	}
}
else{// decelerate
	xSpeed -= sign(xSpeed)*dashAcc/2
	if ((abs(xSpeed))<(dashAcc/2)){
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