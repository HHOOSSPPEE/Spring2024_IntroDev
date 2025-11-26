// dash mode
doubleClickedR = false;// checked if player double clicked
doubleClickedL = false;
lastKeyPressTimeR = -1;// record time key pressed
lastKeyPressTimeL = -1;
doubleClickThreshold = 0.5;// if key pressed within threshold, dash
dashEnergy = 180;// enable dashing for 3s
tired = false;
hungry = 0;
hungryThreshold =7200;

// horizontal movement
xSpeed = 0;
acc = 0.25;
maxV = 2.5;
walkAcc= 0.25;// walk state acceleration
walkMaxV= 2.5;
dashAcc= 0.4;// dash state acceleration
dashMaxV= 4;
slowAcc= 0.18;// hide state acceleration
slowMaxV= 1.8;

// vertical movement
ySpeed = 0;
grv = 0.8;
isGrounded = 6;

// state
enum Player2State{
	walk, 
	dash, 
	shoot,
}
state = Player2State.walk;

// shooting
shootNow = false;
shootQueued = false;
shootingHold = false;
canShoot = true;
holdTime = 0;
holdTimeTemp = 0
holdTimeThreshold = 30


// alert signal
alertDistance = 400;