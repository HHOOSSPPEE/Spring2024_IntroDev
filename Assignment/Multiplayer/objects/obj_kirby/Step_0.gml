// state machine
switch (state){
	// walk state
	case KirbyState.walk:
		xSpeed = dir*xSpeedWalk;
		show_debug_message(random(2));
		if (dir*x > dir*destination){
			state = KirbyState.stop;
		}
		break;
	// stop state
	case KirbyState.stop:
		xSpeed = 0;
		if (stopTimer++>maxStopTime){
			randomize();
			stopTimer = 0;
			maxStopTime = irandom_range(60,160);
			dir = dir = irandom(1)==1 ? 1 : -1;
			destination = x + dir * random(300);
			state=KirbyState.walk;
		}
		break;
			
}
// horizontal movement

// vertical movement
ySpeed += grv;

// check collision 
var newXY = CollisionCheck(x,y,xSpeed,ySpeed,isGrounded);
xSpeed = newXY[0];
ySpeed = newXY[1];

// inplement movement
x += xSpeed;
y += ySpeed;