//step
/// @description Insert description here
// You can write your code in this editor

//inputs
var keyRight = keyboard_check(vk_right);
var keyLeft = keyboard_check(vk_left);
var keyJump = keyboard_check_pressed(vk_space);
var endJump = keyboard_check_released(vk_space);

//where are we going
playerX = (keyRight - keyLeft) * playerSpeed*0.5;
playerY = playerY + grv;

//check if can jump
if(isGrounded-- > 0 && keyJump)
{
	playerY = playerJumpSpeed;
    playerSpeed=0
	isGrounded = 0;
}
if(endJump&&hasJump){
	playerY=dropgrv;
	
	isGrounded=0;
	hasJump=true;
}

//check collisions - these happen BEFORE we move so the math is checking where we are about to be
if ( place_meeting(x + playerX, y, tmObstacles)) //if colliding with floor tile layer on X
{ 
	//0.1 is our precision - how close we allow player to get to the object - higher is a  bigger gap
	while(abs(playerX) > 0.1) //if the player is moving in horizontal even tho it is running into a wall
	{
		playerX *= 0.5; //half x movement
		if(!place_meeting(x + playerX,y, tmObstacles))
		{ 

			x += playerX;	
		}
	}
	
	playerX = 0; //set to zero if there is a collision
}

if (x + playerX < 0) {
    x = 0; 
} else {
    x += playerX; 
}



if (place_meeting(x, y + playerY, tmFloor)) //if colliding with floor tile layer on Y
{ 
	if (playerY > 0)
	{
		isGrounded = 6; //this is  our jump buffer - basically a nice little hang time for players to still be able to jump after dropping a bit
	}
	
	while(abs(playerY) > 0.1) 
	{
		playerY *= 0.5; 
		if(!place_meeting(x,y + playerY, tmFloor)) //use obj_collider too
		{ 
			y += playerY;
		}
	}
	
	playerY = 0;
	//show_debug_message(obj_player.y);
}

if (place_meeting(x, y + playerY, tmObstacles)) //if colliding with floor tile layer on Y
{ 
	if (playerY > 0)
	{
		isGrounded = 6; //this is  our jump buffer - basically a nice little hang time for players to still be able to jump after dropping a bit
	}
	
	while(abs(playerY) > 0.1) 
	{
		playerY *= 0.5; 
		if(!place_meeting(x,y + playerY, tmObstacles)) //use obj_collider too
		{ 
			y += playerY;
		}
	}
	
	playerY = 0;
}

if (place_meeting(x, y + playerY, tmJumpCollide)) //if colliding with floor tile layer on Y
{ 
	if (playerY > 0)
	{
		isGrounded = 6; //this is  our jump buffer - basically a nice little hang time for players to still be able to jump after dropping a bit
	}
	
	while(abs(playerY) > 0.1) 
	{
		playerY *= 0.5; 
		if(!place_meeting(x,y + playerY, tmJumpCollide)) //use obj_collider too
		{ 
			y += playerY;
		}
	}
	
	playerY = 0;
}




if(place_meeting(x-1,y,obj_coin_cube)){
	x+=1;
	playerSpeed=0;
	playerY=1.5;
	
}
else {
	
	playerSpeed=3;}
	
if(place_meeting(x+1,y,obj_coin_cube)){
	x-=1;
	playerSpeed=0;
	playerY=1.5;
	
}
else {
	
	playerSpeed=3;}
	
if(place_meeting(x-1,y,tmJumpCollide)){
	x+=1;
	playerSpeed=0;
	playerY=1.5;
	
}
else {
	
	playerSpeed=3;}
	
if(place_meeting(x+1,y,tmJumpCollide)){
	x-=1;
	playerSpeed=0;
	playerY=1.5;
	
}
else {
	
	playerSpeed=3;}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	





//Cube after jump collide

if (place_meeting(x, y + playerY, tmAfterJump)) //if colliding with floor tile layer on Y
{ 
	if (playerY > 0)
	{
		isGrounded = 6; //this is  our jump buffer - basically a nice little hang time for players to still be able to jump after dropping a bit
	}
	
	while(abs(playerY) > 0.1) 
	{
		playerY *= 0.5; 
		if(!place_meeting(x,y + playerY, tmAfterJump)) //use obj_collider too
		{ 
			y += playerY;
		}
	}
	
	playerY = 0;
}

//if(place_meeting(x,y,tmAfterJump)){
	
//	playerSpeed=0;
//	playerY=1.5;
	
//}
//else {
	
//	playerSpeed=3;}

//





//tile change
var tile_size = 16;


if(place_meeting(x,y-10,tmAfterJump)&&playerY<0){
	var grid_x = floor((x + sprite_width * 0.5) / tile_size);
    var grid_y = floor((y - 14) / tile_size);

 
    var layer_id = layer_get_id("Tiles_8");
    var map_id = layer_tilemap_get_id(layer_id);
	
	var tile= tilemap_set_at_pixel(map_id, 0, x, grid_y * tile_size);

    if (tile != 0) {
        
        tilemap_set_at_pixel(map_id, 0, x, grid_y * tile_size);
   }

	
	
}
 
//


//generate mushroom
var tile_size = 16; 
var tile_x = floor(x / tile_size);
var tile_y = floor((y - 14) / tile_size); 
//Mushroom1
var tile_index1 = tilemap_get_at_pixel(tmMushroom1, x, (tile_y * tile_size) + 1);
if (tile_index1 != 0) {
 
    var mushroom_y = (tile_y * tile_size) - tile_size; 
	if(!Generate){
    instance_create_depth(x-10, mushroom_y-6, 0, obj_mushroom);
	tilemap_set_at_pixel(tmMushroom1, 0, x, tile_y * tile_size);
	Generate=true;
	}
}
//Mushroom2
var tile_index2 = tilemap_get_at_pixel(tmMushroom2, x, (tile_y * tile_size) + 1);
if (tile_index2 != 0) {
 
    var mushroom_y = (tile_y * tile_size) - tile_size; 
	if(!Generate2){
    instance_create_depth(x-10, mushroom_y-6, 0, obj_mushroom);
	tilemap_set_at_pixel(tmMushroom2, 0, x, tile_y * tile_size);
	Generate2=true;
	}
}
//Mushroom3
var tile_index3 = tilemap_get_at_pixel(tmMushroom3, x, (tile_y * tile_size) + 1);
if (tile_index3 != 0) {
 
    var mushroom_y = (tile_y * tile_size) - tile_size; 
	if(!Generate3){
    instance_create_depth(x-10, mushroom_y-6, 0, obj_mushroom);
	tilemap_set_at_pixel(tmMushroom3, 0, x, tile_y * tile_size);
	Generate3=true;
	}
}





y += playerY; //now we move



//Gomba
if (place_meeting(x, y +14, obj_enemy)&&playerY>0) {
   
    var enemy_instance = instance_place(x, y + sprite_height + 10, obj_enemy);
    
    
    if (enemy_instance != noone) {
        global.score+=100;
        instance_destroy(enemy_instance);
		
    }
}

if (place_meeting(x, y, obj_enemy)) {
    var enemy_instance = instance_place(x, y, obj_enemy);
    
    if (enemy_instance != noone && !is_invincible) {
        if (global.health > 1) {
             global.health -= 1; 
			 image_xscale = 1; 
             image_yscale = 1;
            is_invincible = true; 
            invincible_timer = 180; 
          
        } else {
          
            sprite_index = spr_die;
            global.health -= 1; 
        }
    }
}


//Turtle
if (place_meeting(x, y +14, obj_enemy2)&&playerY>0) {
   
    var enemy_instance = instance_place(x, y + sprite_height + 10, obj_enemy2);
    
    
    if (enemy_instance != noone) {
        global.score+=100;
		//obj_enemy2.step=true;
        //instance_destroy(enemy_instance);
		
    }
}

if (place_meeting(x, y, obj_enemy2)) {
    var enemy_instance = instance_place(x, y, obj_enemy2);
    
    if (enemy_instance != noone && !is_invincible) {
        if (global.health > 1) {
             global.health -= 1; 
			 image_xscale = 1; 
             image_yscale = 1;
            is_invincible = true; 
            invincible_timer = 80; 
            
        } else {
            if(!obj_enemy2.shell){
            sprite_index = spr_die;
            global.health -= 1; 
			}
        }
    }
}














if (is_invincible) {
    invincible_timer -= 1;
    if (invincible_timer <= 0) {
        is_invincible = false; 
    }
}







if(y>300){
	room_restart();
global.coin=0;
global.score=0;
global.timer=400;

}

if (global.health <= 0) {
            room_restart();
			global.health=1;
			global.coin=0;
			global.score=0;
			global.timer=400;
          
}



if(place_meeting(x,y,obj_mushroom)){
	global.health+=1;
	image_xscale = 1.5; 
    image_yscale = 1.5; 
	instance_destroy(obj_mushroom)
	//show_debug_message(global.health)
	is_invincible=true;
	invincible_timer=180;
	y-=10
}

















var keyRight = keyboard_check(vk_right);
var keyLeft = keyboard_check(vk_left);


if (isGrounded < 0) { 
    sprite_index = spr_mario; 
    image_index = 1; 
    image_speed = 0; 
   
    image_xscale = lastDirection;
} else {
    
    if (playerX > 0&&playerY==0) {
        sprite_index = spr_mario; 
        image_speed = 0.8; 
        image_xscale = 1; 
		lastDirection = 1;
    } else if (playerX < 0&&playerY==0) {
        sprite_index = spr_mario; 
        image_speed = 0.8; 
        image_xscale = -1; 
		lastDirection = -1;
    } else {
        sprite_index = spr_mario; 
        image_speed = 0; 
        image_index = 0; 
    }
}

if(place_meeting(x,y+15,obj_down)&&keyboard_check(vk_down)){
	
	room_goto(rm_2);
	
}

if (room == rm_2) { 
    with (obj_mushroom) {
        instance_destroy();
    }
}




if(place_meeting(x-2,y,obj_enter)&&keyboard_check(vk_right)){
	
	show_debug_message("hhhh")
	room_goto(rm_1);
	global.needToRespawn = true;

}



if (global.needToRespawn && instance_exists(obj_respawn)) {
    x = obj_respawn.x;
    y = obj_respawn.y-30;
    global.needToRespawn = false; 
}
//show_debug_message(global.coin)


if(place_meeting(x,y,obj_flag_cube)){
	succeed=true;
	playerSpeed=0;
	
}

if (succeed) {

    if (obj_flag.y < 145) {
        obj_flag.y += 5;
    }
    
   
    if (timer > 0) {
        timer -= 1; 
    } else if (timer == 0) {
      
       playerSpeed = 3; 
    }
}

if (succeed&& playerSpeed > 0 && x < 3030) {
    x += playerSpeed; 
	
} else if (x >= 3030) {
    playerSpeed = 0;
	
	win=true;
}

