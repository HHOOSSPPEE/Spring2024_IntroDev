/// @description Insert description here
// You can write your code in this editor

//inputs
var keyRight = keyboard_check(vk_right);
var keyLeft = keyboard_check(vk_left);
var keyJump = keyboard_check_pressed(vk_space);

//where are we going
playerX = (keyRight - keyLeft) * playerSpeed;
playerY = playerY + grv;

//check if can jump
if(isGrounded-- > 0) && (keyJump)
{
	playerY = playerJumpSpeed;
	isGrounded = 0;
}


//check collisions - these happen BEFORE we move so the math is checking where we are about to be
if ( place_meeting(x + playerX, y, obj_collider)) //if colliding with floor tile layer on X
{ 
	//0.1 is our precision - how close we allow player to get to the object - higher is a  bigger gap
	while(abs(playerX) > 0.1) //if the player is moving in horizontal even tho it is running into a wall
	{
		playerX *= 0.5; //half x movement
		if(!place_meeting(x + playerX,y, obj_collider))
		{ 

			x += playerX;
		}
	}
	
	playerX = 0; //set to zero if there is a collision
}

if ( place_meeting(x + playerX, y, obj_brick)) //if colliding with floor tile layer on X
{ 
	//0.1 is our precision - how close we allow player to get to the object - higher is a  bigger gap
	while(abs(playerX) > 0.1) //if the player is moving in horizontal even tho it is running into a wall
	{
		playerX *= 0.5; //half x movement
		if(!place_meeting(x + playerX,y, obj_brick))
		{ 

			x += playerX;
		}
	}
	
	playerX = 0; //set to zero if there is a collision
}

if ( place_meeting(x + playerX, y, obj_pipe)) //if colliding with floor tile layer on X
{ 
	//0.1 is our precision - how close we allow player to get to the object - higher is a  bigger gap
	while(abs(playerX) > 0.1) //if the player is moving in horizontal even tho it is running into a wall
	{
		playerX *= 0.5; //half x movement
		if(!place_meeting(x + playerX,y, obj_pipe))
		{ 

			x += playerX;
		}
	}
	
	playerX = 0; //set to zero if there is a collision
}

if ( place_meeting(x + playerX, y, obj_mushroombox)) 
{ 

	while(abs(playerX) > 0.1) 
	{
		playerX *= 0.5; 
		if(!place_meeting(x + playerX,y, obj_mushroombox))
		{ 

			x += playerX;
		}
	}
	
	playerX = 0; //set to zero if there is a collision
}

x += playerX; //now we move

if (place_meeting(x, y + playerY, obj_collider)) //if colliding with floor tile layer on Y
{ 
	if (playerY > 0)
	{
		isGrounded = 6; //this is  our jump buffer - basically a nice little hang time for players to still be able to jump after dropping a bit
	}
	
	while(abs(playerY) > 0.1) 
	{
		playerY *= 0.5; 
		if(!place_meeting(x,y + playerY, obj_collider)) //use obj_collider too
		{ 
			y += playerY;
		}
	}
	
	playerY = 0;
}

if (place_meeting(x, y + playerY, obj_brick)) //if colliding with floor tile layer on Y
{ 
	if (playerY > 0)
	{
		isGrounded = 6; //this is  our jump buffer - basically a nice little hang time for players to still be able to jump after dropping a bit
	}
	
	while(abs(playerY) > 0.1) 
	{
		playerY *= 0.5; 
		if(!place_meeting(x,y + playerY, obj_brick)) //use obj_collider too
		{ 
			y += playerY;
		}
	}
	
	playerY = 0;
}

if (place_meeting(x, y + playerY, obj_mushroombox)) //if colliding with floor tile layer on Y
{ 
	if (playerY > 0)
	{
		isGrounded = 6; //this is  our jump buffer - basically a nice little hang time for players to still be able to jump after dropping a bit
	}
	
	while(abs(playerY) > 0.1) 
	{
		playerY *= 0.5; 
		if(!place_meeting(x,y + playerY, obj_mushroombox)) //use obj_collider too
		{ 
			y += playerY;
		}
	}
	
	playerY = 0;
}

if (place_meeting(x, y + playerY, obj_pipe)) //if colliding with floor tile layer on Y
{ 
	if (playerY > 0)
	{
		isGrounded = 6; //this is  our jump buffer - basically a nice little hang time for players to still be able to jump after dropping a bit
	}
	
	while(abs(playerY) > 0.1) 
	{
		playerY *= 0.5; 
		if(!place_meeting(x,y + playerY, obj_pipe)) //use obj_collider too
		{ 
			y += playerY;
		}
	}
	
	playerY = 0;
}
y += playerY; //now we move


//fall out boundry damage
if (place_meeting(x, y, obj_death)) {
    global.hp -= 1; // Decrease HP
    // Reset Mario's position, assuming startX and startY are his starting coordinates
    x = startX;
    y = startY;

}
if(place_meeting(x,y,obj_checkpoint)){
	startX = 1328;
}
	
if(global.hp <= 0){
	room_goto(game_over);
}



if (eat_mushroom = true){
	obj_mario.sprite_index = large_mario;
}

























