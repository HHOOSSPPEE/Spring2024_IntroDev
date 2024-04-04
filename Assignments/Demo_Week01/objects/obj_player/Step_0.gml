/// @description Insert description here
// You can write your code in this editor

//inputs
var keyRight = keyboard_check(vk_right);
var keyLeft = keyboard_check(vk_left);
var keyJump = keyboard_check_pressed(vk_space);
var endJump = keyboard_check_released(vk_space);

//control


//where are we going
playerX = (keyRight - keyLeft) * playerSpeed;
playerY = playerY + grv;

//check if we can jump
if(isGrounded-- > 0) && (keyJump)
{
	playerY = playerJumpSpeed;
	isGrounded = 0;
	hasJumped = true;
	
}
//show_debug_message(hasJumped);
if(endJump && hasJumped == true)
{
	//show_debug_message("hello");
	playerY = dropgrv;
	hasJumped = false; 
	
}

//check collisions
if(place_meeting((x + playerX), y, tmFloor))
{
	while(abs(playerX) > 0.1)
	{
		playerX *= 0.5;
		if(!place_meeting(x + playerX,y, tmFloor))
		{
			x += playerX;
		}
	}
	
	playerX = 0;
}

x += playerX;

if(place_meeting(x,y + playerY, tmFloor))
{
	if(playerY > 0)
	{
		isGrounded = 6;
	}
	
	while(abs(playerY) > 0.1)
	{
		playerY *= 0.5;
		if(!place_meeting(x, y + playerY, tmFloor))
		{
			y += playerY;
		}
	}
	
	playerY = 0;
}

y += playerY;

