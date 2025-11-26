preysInScreenL = [];
preysInScreenR = [];
// horizontal movement
xSpeed = 0;
acc = 0.24;
maxV = 2.4;
dashAcc= 0.36;// dash state acceleration
dashMaxV= 3.6;
dir = 1


// vertical movement
ySpeed = 0;
grv = 0.8;
isGrounded = 6;


// state
enum Player1State{
	left,
	right,
	stay,
}
state = Player1State.stay;
