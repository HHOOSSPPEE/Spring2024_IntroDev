//WASD

var keyLeft = keyboard_check(ord("A"));
var keyRight = keyboard_check(ord("D"));
var keyUp = keyboard_check(ord("W"));
var keyDown = keyboard_check(ord("S"));

playerX = (keyRight - keyLeft) * playerSpeed;
playerY = (keyDown - keyUp) * playerSpeed;


//click to punch
if(mouse_check_button(mb_left)) && !punch
{
	punch = true;
}


//if attacked by enemy, hp drops
if(place_meeting(x,y,obj_boss)) && !invincible
{
	global.player_hp -= 1;
	invincible = true;
}

if(place_meeting((x + playerX), y, obj_collision))
{
	while(abs(playerX) > 0.1)
	{	
		playerX *= 0.5;
		
		if(!place_meeting(x + playerX, y, obj_collision))
		{
			x += playerX;
		}
	}
	playerX = 0;
}
x += playerX;

if (place_meeting(x, y + playerY, obj_collision))
{
	while(abs(playerY) > 0.1)
	{
		playerY *= 0.5;
		
		if (!place_meeting(x,y + playerY, obj_collision))
		{
			y += playerY;
		}
	}
	playerY = 0;
}
y += playerY;

if (invincible)
{
	invin_timer -= 3;
	if(invin_timer < 0)
	{
		invincible = false;
		invin_timer = 180;
	}
}


//player dies
if (global.player_hp == 0)
{
	game_restart();
}