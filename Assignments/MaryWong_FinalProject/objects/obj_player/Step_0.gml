animationStep();

//inputs
var keyRight = keyboard_check(vk_right);
var keyLeft = keyboard_check(vk_left);
var keyUp = keyboard_check(vk_up);
var keyDown = keyboard_check(vk_down);


//where are we going
playerX = (keyRight - keyLeft) * playerSpeed;
playerY = (keyDown - keyUp) * playerSpeed;

//check collisions
if (place_meeting((x + playerX), y, obj_collider))
{
	while(abs(playerX) > 0.1)
	{
		playerX *= 0.5;
		if(!place_meeting(x + playerX, y, obj_collider))
		{
			x += playerX;
		}
	}
	playerX = 0;
}

if (place_meeting(x, (y + playerY), obj_collider))
{
	while(abs(playerY) > 0.1)
	{
		playerY *= 0.5;
		if(!place_meeting(x, y + playerY, obj_collider))
		{
			y += playerY;
		}
	}
	playerY = 0;
}


x += playerX;
y += playerY;

