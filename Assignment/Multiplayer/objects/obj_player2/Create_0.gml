// dash mode
doubleClickedR = false;// checked if player double clicked
doubleClickedL = false;
lastKeyPressTimeR = -1;// record time key pressed
lastKeyPressTimeL = -1;
doubleClickThreshold = 0.5;// if key pressed within threshold, dash
dashEnergy = 180;// enable dashing for 3s
tired = false;

// horizontal movement
xSpeed = 0;
acc = 0.18;
maxV = 1.8;
walkAcc= 0.18;// walk state acceleration
walkMaxV= 1.8;
dashAcc= 0.3;// dash state acceleration
dashMaxV= 3;
slowAcc= 0.06;// hide state acceleration
slowMaxV= 0.6;

// vertical movement
ySpeed = 0;
grv = 0.8;
isGrounded = 6;

// state
enum Player2State{
	walk, 
	dash, 
	hide,
	shoot,
}
state = Player2State.walk;

// shooting
shootingTime = 0;
shootingThreshold = 45;
canShoot = true;
preysInScreenL = [];
preysInScreenR = []