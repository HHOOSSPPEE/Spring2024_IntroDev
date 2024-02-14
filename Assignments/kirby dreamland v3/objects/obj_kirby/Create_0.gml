//player variables
grv = .1;
grvfloat = .01;
grvjump = .08;
grvstop = .04;

playerX = 0;
playerY = 0;

playerSpeed = 1;
playerFloatSpeedX = 0.7;

playerJumpSpeed = -2.5;
playerFloatSpeed = -0.7;

//tweak for kirby
isGrounded = 0;

jumping = true;
floating = false;
walking = false;

//floating/ jumping counter
counter = 0;

//the layer will be the collider if you swap obj_collider with tmFloor
tmFloor = layer_tilemap_get_id("Tiles_1");

playerHealth = 6;
invincible = false
invincibleTimer = 90

//shooting right or left
shootingRight = true;