/// @description Insert description here
// You can write your code in this editor

//player variables
grv = .1;
dropgrv = .05;
playerX = 0;
playerY = 0;

playerSpeed = 3;
playerJumpSpeed = -6;
isGrounded = 0;

tmFloor = layer_tilemap_get_id("Tiles_1");

playerHealth = 2;

hasJumped = false;