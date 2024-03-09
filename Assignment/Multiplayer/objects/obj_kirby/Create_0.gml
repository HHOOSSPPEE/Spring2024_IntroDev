xSpeed = 0.5;
xSpeedWalk = 0.5;
xSpeedRun = 1.5
ySpeed = 0;
grv = 0.8;
isGrounded = 6;

// states
enum KirbyState{
	walk, 
	stop,
	run,
}
state = KirbyState.walk

// walking randomly
randomize();
dir = irandom(2)==1 ? 1 : -1;
destination = x + dir * random(300);

// stop state
stopTimer = 0;
maxStopTime = irandom_range(60,160);

// detecting player
alert = 1000; 