//player variables
grv = .1;
//here playerX is predictive x
playerX = 0;
playerY = 0;

playerSpeed = 2;
playerJumpSpeed = -3;
isGrounded = 0;

remainingJumps = 100;

onFloor = false;
jumped = false;
//float_adjusted = false;



//if there are different layers in tile map (single layer drawing the floor)
//"disable source sprite export" box in tile properties should be unchecked

//tmFloor = layer_tilemap_get_id("Tiles_1");

//Then replace all obj_collider with tmFloor


player_hp = global.player_hp;