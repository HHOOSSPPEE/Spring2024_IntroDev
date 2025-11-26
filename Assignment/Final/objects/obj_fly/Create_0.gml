xSpeed = 0.5;
xSpeedFly = 1;

hp = 1;
// states
enum FlyState{
	fly, 
	stop,
	hungry,
	ascend
}
state = FlyState.fly

// walking randomly
randomize();
dir = irandom(2)==1 ? 1 : -1;
destination = x + dir * random(300);

// stop state
stopTimer = 0;
maxStopTime = irandom_range(60,160);
