//inputs
var keyRight = keyboard_check(vk_right);
var keyLeft = keyboard_check(vk_left);
var keyJump = keyboard_check_pressed(vk_space);

x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height*2);


//animation
var current_sprite = spr_kirby_still;

if (keyRight) 
{
    current_sprite = spr_kirby_walk;
    image_xscale = 1;
}
if (keyLeft) 
{
    current_sprite = spr_kirby_walk;
    image_xscale = -1;
}

if (keyJump && !jumped)
{
	jumped = true;
}


if (!onFloor) 
{
	if (jumped)
	{
		current_sprite = spr_kirby_float;
		//if (!float_adjusted)
		//{
		//	y -= 9;
		//	float_adjusted = true;
		//}
	}
	else
	{
		current_sprite = spr_kirby_jumpfall;
	}
	if (place_meeting(x, y + 16, obj_collider) || place_meeting(x + 8, y, obj_collider) || place_meeting(x - 8, y, obj_collider))
	{
		current_sprite = spr_kirby_jumpfall;
	}
}

if (isGrounded-- > 0) 
{
    onFloor = true;
    jumped = false;
}
else 
{
    onFloor = false;
}


sprite_index = current_sprite;




//where we are going
playerX = (keyRight - keyLeft) * playerSpeed;
playerY = playerY + grv;

//check if we can jump
if(isGrounded-- > 0) && (keyJump)
{
	playerY = playerJumpSpeed;
	isGrounded = 0;
	remainingJumps = 100;
}

else if (remainingJumps > 0 && keyJump)
{
    // Double jump with smaller range
    playerY = playerJumpSpeed * 0.6;
    remainingJumps -= 1;
}


//check collisions
//abs : absolute value
//while() : loop
if(place_meeting((x + playerX), y, obj_collider))
{
	while(abs(playerX) > 0.1)
	{
		playerX *= 0.5;
		if(!place_meeting((x + playerX), y, obj_collider))
		{
			x += playerX;
		}
	}
	//above: slow the player when approaching closer and closer to the wall
	//then stop the player and reset to 0
	playerX = 0;
}

x += playerX;

if(place_meeting(x, y + playerY, obj_collider))
{
	if(playerY > 0)
	{
		//larger number: grace period of jumping
		//smaller number: more strict, have to be on the ground to jump
		isGrounded = 6;
		remainingJumps = 4;
	}
	
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

y += playerY;


if(y > room_height + sprite_height*5)
{
	player_hp -= 1;
	global.player_hp = player_hp;
	x -= 96;
	y = 32;
	show_debug_message("Player HP: " + string(player_hp))
}

if(global.player_hp == 0)
{
	room_restart();
	global.player_hp = 3;
}