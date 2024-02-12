grv = .1;
playerX = 0;
playerY= 0;
startX = 128;
startY = 160;
playerSpeed = 3;
playerJumpSpeed = -4; //Negative against negative
isGrounded = 0;



//object & tile refs
tmFloor = layer_tilemap_get_id("TileSet1"); //be sure to uncheck "disable source sprite export" so that collisions work
eat_mushroom = false;