// state machine
switch (state){
	// walk state
	case FlyState.fly:
		xSpeed = xSpeedFly;
		if (dir*x > dir*destination){
			state = KirbyState.stop;
		}
		break;
	// stop state
	case FlyState.stop:
		xSpeed = 0;
		if (stopTimer++>maxStopTime){
			stopTimer = 0;
			maxStopTime = irandom_range(60,160);
			dir = irandom(1)==1 ? 1 : -1;
			destination = x + dir * random(300);
			state=FlyState.fly;
		}
		break;
    // hungry state
    case FlyState.hungry:
		// if no meat, stop
		var nearestMeat = instance_nearest(x, y, obj_meat);
        if (!nearestMeat) {
            state = FlyState.ascend;
            break;
        }
        
		dir = sign(nearestMeat.x - x);
		xSpeed = xSpeedFly;

	     var dx = nearestMeat.x - x;
		 if (abs(dx) < 300){ // descend when close enough
	        var dy = nearestMeat.y - y;
	        var horizontalTime = abs(dx) / xSpeedFly;
			var ySpeedFly = abs(dy) / horizontalTime;
			// move vertically
	        if (abs(dy) > ySpeedFly) {
	            y += sign(dy) * ySpeedFly;
	        } else {
	            y = nearestMeat.y;
	        }
		
			// eat meat
			if (place_meeting(x, y, obj_meat)) {
	            with (nearestMeat) {
	                instance_destroy();
	            }
	            state = FlyState.ascend;
	        }
		}
        break;

    // fly back to sky
    case FlyState.ascend:
	var skyY = obj_player2.y - 120;
		if (y > skyY) {
            y -= xSpeedFly;
        } 
		else {
			y = skyY
            stopTimer = 0;
			maxStopTime = irandom_range(60,160);
			dir = irandom(1)==1 ? 1 : -1;
			destination = x + dir * random(300);
			state=FlyState.fly;
        }
        xSpeed = xSpeedFly;
        break;
}
// state change
if (instance_exists(obj_meat)&& state != FlyState.hungry && state != FlyState.ascend){
	state = FlyState.hungry;
}
// hp
if (hp <= 0){
	global.preyHunted+=1;
	instance_destroy();
}

// inplement movement
x += dir*xSpeed;