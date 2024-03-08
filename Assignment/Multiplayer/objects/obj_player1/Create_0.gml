// dash mode
doubleClickedD = false;// checked if player double clicked
doubleClickedA = false;
lastKeyPressTimeD = -1;// record time key pressed
lastKeyPressTimeA = -1;
doubleClickThreshold = 0.5;// if key pressed within threshold, dash
dashEnergy = 180;// enable dashing for 3s
tired = false;

// horizontal movement
xSpeed = 0;
acc = 0.24;
maxV = 2.4;
walkAcc= 0.24;// walk state acceleration
walkMaxV= 2.4;
dashAcc= 0.48;// dash state acceleration
dashMaxV= 4.8;
slowAcc= 0.12;// hide state acceleration
slowMaxV= 1.2;

// vertical movement
ySpeed = 0;
grv = 0.8;
isGrounded = 6;

// state
enum Player1State{
	walk, 
	dash, 
	drag,
	sniff,
}
state = Player1State.walk;

// sniffing
preyLeft = false;
preyRight = false;
sniffingTime = 0;
