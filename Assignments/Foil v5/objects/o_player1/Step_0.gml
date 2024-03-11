//check keyboard movement
var keyRight = keyboard_check(vk_right);
var keyLeft = keyboard_check (vk_left);
var keyJump = keyboard_check(vk_up);

if (canmove = true)
{
playerX = (keyRight - keyLeft) *playerSpeed;

playerY = playerY + grv;
}
else if (canmove = false)
{
	playerX = 0;
	playerY = 0;
}

//check if we can jump
if(isGrounded-- > 0) && (keyJump)
{
	playerY = playerJumpSpeed;
	isGrounded = 0;	
}

//check collisions X axis
if(place_meeting((x + playerX), y, o_collider))
{
	while(abs(playerX) > 0.1)
	{
		playerX *= 0.5;
		if(!place_meeting(x + playerX, y, o_collider))
		{
			x += playerX;
		}
	}
	
	playerX = 0;
}

x += playerX;

//check collision y axis
if(place_meeting(x,y + playerY, o_collider))
{
	if(playerY > 0)
	{
		isGrounded = 6;
	}
	
	while(abs(playerY) > 0.1)
	{
		playerY *= 0.5;
		if(!place_meeting(x, y + playerY, o_collider))
		{
			y += playerY; 
		}
	}
	
	playerY = 0;
}

y += playerY;

//collision with foil
if(place_meeting(x,y,o_foil2)) && (global.priority = 1)
{
	global.player1Score += 1;
	global.kill1 = true
	
	instance_destroy(o_player2);
	instance_destroy(o_foil2);
	
}

//foil will be attached to the player
o_foil1.x = x-20;
o_foil1.y = y-20;

//right of way mechanic
if (keyboard_check_pressed(vk_left)) && (! keyboard_check(ord("D"))) && (global.parry = false)
{
	global.priority = 1;
}

//if player1 stops moving forward right of way will be given 
if (keyboard_check_released(vk_left)) && (keyboard_check(ord("D"))) && (global.parry = false)
{
	global.priority = 2;
}

//lunge mechanic
if keyboard_check_pressed(ord("O")) && (cooldown = false)
{
	x -=40;
	sprite_index = s_player1_lunge;
	cooldown = true;
	canmove = false;
}

//cooldown
if (cooldown = true)
{
	timer += 1;
	canmove = false;
}

if (timer = 30)
{
	cooldown = false;
	timer = 0;
	canmove = true;
	sprite_index = s_player1;
}

//falling off the stage
if (y >= 1000)
{
	global.player2Score += 1;
	global.kill2 = true
	
	instance_destroy(o_player1);
	instance_destroy(o_foil1);
}