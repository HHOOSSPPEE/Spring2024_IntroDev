//player variables

grv = .03;

playerX = 0;
playerY = 0;

playerSpeed = 1;
playerJumpSpeed = -1;
isGrounded = 5;
isFlying = false;
isFalling = false;


tmFloor = layer_tilemap_get_id("Ground");
	//only if tilemap for ground is separate from background
	
health = 6;

invincible = false;
invincible_timer = 0;
invincible_timer_max = 180;


