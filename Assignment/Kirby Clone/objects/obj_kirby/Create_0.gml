xSpeed = 0;
ySpeed = 0;
hp = 4;
invincible=false;
invincibleTimer=60;

// horizontal movement
acc = 0.1;
maxV = 1;
groundMaxV = 1;
floatMaxV = 0.7;

// vertical movement
floating = false;
grv = 0.08;

isGrounded = 0;
isJumping = false;
jumpTimer = 0;
jumpV = -1.9;
jumpDec = 0.8;
jumpReleased = true;

maxFallV = 1.7;
normalMaxFall = 1.7;
floatMaxFall = 0.7;
flyV= -1

// states
ts_animation = false;
enum playerState{
	normal,
	floating,
	inflated,
}
state = playerState.normal;
freeze=false;