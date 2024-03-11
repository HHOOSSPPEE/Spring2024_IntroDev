// state machine
switch (state){
	// walk state
	case KirbyState.walk:
		xSpeed = xSpeedWalk;
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
			dir = irandom(1)==1 ? 1 : -1;
			destination = x + dir * random(300);
			state=KirbyState.walk;
		}
		break;
	// stop state
	case KirbyState.run:
		xSpeed = xSpeedRun;
		break;
	case KirbyState.dragged:
		// if being dragged, slow down
		xSpeed = obj_player1.maxV;
		break;
}
// horizontal movement

// vertical movement
ySpeed += grv;

// detect closest player
alert = DetectPlayers(alert)[0];
if (alert>alertThreshold){
	dir = DetectPlayers(alert)[1];
	state = KirbyState.run;
}
else{
	state=KirbyState.walk;
}
	

// check collision 
var newXY = CollisionCheck(x,y,xSpeed,ySpeed,isGrounded);
xSpeed = newXY[0];
ySpeed = newXY[1];

// inplement movement
x += dir*xSpeed;
y += ySpeed;