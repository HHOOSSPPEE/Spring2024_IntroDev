//inputs
var keyRight = keyboard_check(vk_right);
var keyLeft = keyboard_check(vk_left);
var keyJump = keyboard_check_pressed(vk_space);
var keyFloat = keyboard_check(vk_space);

//where are we going
playerX = (keyRight - keyLeft) * playerSpeed;
playerY = playerY + grv;

//check if we can jump
if((isGrounded-- > 0) && (keyJump))//-- is just -1
{
	playerY = playerJumpSpeed;
	isGrounded = 0;
}

//check collisions
if(place_meeting((x+playerX), y, obj_collider))
{
	while(abs(playerX) > 0.1) //is the player moving
	{
		playerX *= 0.5; //how close we could get
		if(!place_meeting((x+playerX), y, obj_collider))
		{
			x += playerX;
		}
	}
	playerX = 0;
}
x += playerX;

//animation
if(playerX > 0)
{
	sprite_index = spr_kirby_walking;
	image_xscale = 1;
}
if(playerX < 0)
{
	sprite_index = spr_kirby_walking;
	image_xscale = -1;
}
if(playerX = 0)
{
	sprite_index = spr_kirby;
}

if(place_meeting(x, (y+playerY), obj_collider))
{
	if(playerY > 0) //jump key pressed and on the ground
	{
		isGrounded = 4; //not on the ground anymore
	}
	
	while(abs(playerY) > 0.1)
	{
		playerY *= 0.5;
		if(!place_meeting(x, (y+playerY), obj_collider))
		{
			y += playerY;
		}
	}
	playerY = 0;
}
y += playerY;

//float
if(keyFloat)
{
	timer += 0.1;
	if(timer >= 2)
	{
		timer = 0;
		grv = .1;
		float_time += 1;
		state = "float";
	}
}
if(float_time >= 3)
{
	grv = .2;
	float_time = 0;
	state = "normal";
}


//animation
if(playerY > 0)
{
	sprite_index = spr_kirby_falling;
}

//reset room when player health reaches 0
if(playerHealth <= 0)
{
	room_restart();
}