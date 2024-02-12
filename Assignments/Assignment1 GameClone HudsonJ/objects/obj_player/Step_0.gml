/// @description Insert description here
// You can write your code in this editor

//inputs 
var keyRight = keyboard_check(vk_right);
var keyLeft = keyboard_check(vk_left);
var keyJump = keyboard_check_pressed(vk_space);
var endJump = keyboard_check_released(vk_space)

//jump stuff
if isBig = true
{
	playerJumpSpeed = -3.6
}
if isBig = false
{
	playerJumpSpeed = -3
}
//hp stuff
if isBig= true
{
	hp = 2
}
if hp = 1 
{
	isBig = false
}

// animations small
if keyRight && isBig=false
{
	image_xscale = 1
	sprite_index = spr_mario_walk
}


if keyLeft && isBig=false
{
	image_xscale = -1
	sprite_index = spr_mario_walk
}

if keyboard_check_released(vk_right) || keyboard_check_released(vk_left) && isBig = false
{
	sprite_index = spr_mario_idle
}


//animations big
if keyRight && isBig=true
{
	image_xscale = 1
	sprite_index = spr_mario_walk_big
}


if keyLeft && isBig=true
{
	image_xscale = -1
	sprite_index = spr_mario_walk_big
}

if keyboard_check_released(vk_right) && isBig = true|| keyboard_check_released(vk_left) && isBig = true
{
	sprite_index = spr_mario_idle_big
}

//where are we going
playerX = (keyRight - keyLeft) * playerSpeed;
playerY = playerY + grv;

//check if we can jump
if(isGrounded -- > 0) && (keyJump)
	{
		playerY = playerJumpSpeed;
		isGrounded = 0;
		hasJumped = true;
	}
if(endJump && hasJumped == true)
{
	playerY =  grv - 0.3;
	hasJumped = false;
}

//check collision
if(place_meeting(x + playerX, y,obj_collider)) 
	{
		while(abs(playerX) > 0.1)
			{
				playerX *= 0.5;
				if(!place_meeting(x +playerX, y, obj_collider)) 
					{
						x += playerX;
					}
			}
			
			playerX = 0;
	}
	
x += playerX;
	
if(place_meeting(x,y +playerY, obj_collider)) 
	{
		if(playerY > 0)
			{
				isGrounded = 6;
			}
			
			while(abs(playerY) > 0.1)
			{
				playerY *= 0.5;
				if(!place_meeting(x,y + playerY, obj_collider)) 
					{
						y += playerY;
					}
			}
			playerY = 0;
	}
y += playerY;


//if(place_meeting(x,y,obj_goomba))||(place_meeting(x,y,obj_hazard))||(place_meeting(x,y,obj_turt))
//{
//	hp -= 1;
//}

if(hp <= 0)
{
	hp = 1;
	room_restart();
}

// lucky block collision
//if(place_meeting(x + playerX, y,obj_lucky_b_power_shroom)) 
//	{
	//	while(abs(playerX) > 0.1)
	//		{
			//	playerX *= 0.5;
			//	if(!place_meeting(x +playerX, y, obj_lucky_b_power_shroom)) 
			//		{
			//			x += playerX;
			//		}
			//}
			
			//playerX = 0;
	//}
	
//x += playerX;
	
//if(place_meeting(x,y +playerY, obj_lucky_b_power_shroom)) 
	//{
	//	if(playerY > 0)
	//		{
	//			isGrounded = 6;
	//		}
			
		//	while(abs(playerY) > 0.1)
		//	{
		//		playerY *= 0.5;
			//	if(!place_meeting(x,y + playerY, obj_lucky_b_power_shroom)) 
			//		{
			//			y += playerY;
			//		}
		//	}
			//playerY = 0;
	//}
//y += playerY;