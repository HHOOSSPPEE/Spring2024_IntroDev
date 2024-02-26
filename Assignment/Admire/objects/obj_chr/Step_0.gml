// inputs
var keyRight = keyboard_check(ord("D"));
var keyLeft = keyboard_check(ord("A"));
var keyUp = keyboard_check(ord("W"));
var keyDown = keyboard_check(ord("S"));

// horizontal movement
if ((keyRight - keyLeft)!=0){
	xSpeed = (keyRight - keyLeft) * xAcc;
}
else{
	xSpeed = 0;
}

// z-axis movement
if ((keyDown - keyUp)!=0){
	ySpeed = (keyDown - keyUp) * yAcc;
}
else{
	ySpeed=0;
}


// collision
if (place_meeting((x+xSpeed),y,par_object)){// horizontal
	if (instance_place((x+xSpeed),y,par_object).collision){
		while (abs(xSpeed)>0.1){
			xSpeed /= 2;
			if(!place_meeting((x+xSpeed),y,par_object)){
				x += xSpeed;
			}
		}
		xSpeed = 0;
	}
}
with(par_object){
	if (checkCollision(self)){
		if (self.collision){
			while (abs(obj_chr.ySpeed)>0.1){
				obj_chr.ySpeed /= 2;
				if(!(checkCollision(self))){
					obj_chr.yValue += obj_chr.ySpeed;
				}
			}
			obj_chr.ySpeed = 0;
		}
	}
}


// implement movement
x+=xSpeed;
yValue+=ySpeed;