//check keyboard movement
var keyRight = keyboard_check(ord("D"));
var keyLeft = keyboard_check (ord("A"));
var keyJump = keyboard_check(ord("W"));

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

//check collisions
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
if(place_meeting(x,y,o_foil1)) && (global.priority = 2)
{
	global.player2Score += 1;
	global.kill2 = true
	
	instance_destroy(o_player1);
	instance_destroy(o_foil1);
}


//foil will be attached to the player
o_foil2.x = x+20;
o_foil2.y = y-20;


//right of way mechanic
if (keyboard_check_pressed(ord("D"))) && (! keyboard_check(vk_left)) && (global.parry = false)
{
	global.priority = 2;
}

//if player2 stops moving forward right of way will be given to player2
if (keyboard_check_released(ord("D"))) && (keyboard_check(vk_left)) && (global.parry = false)
{
	global.priority = 1;
}

//lunge mechanic
if keyboard_check_pressed(ord("1")) && (cooldown = false)
{
	x +=40;
	sprite_index = s_player2_lunge;
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
	sprite_index = s_player2;
}

//falling off the stage
if (y >= 1000)
{
	global.player1Score += 1;
	global.kill1 = true
	
	instance_destroy(o_player2);
	instance_destroy(o_foil2);
}