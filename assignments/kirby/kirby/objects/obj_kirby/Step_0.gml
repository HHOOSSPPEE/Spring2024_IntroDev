//inputs

var keyRight = keyboard_check(vk_right);
var keyLeft = keyboard_check(vk_left);
var keyFloat = keyboard_check(ord("X"));
var keyJump = keyboard_check(vk_up);
//where are we going

playerX = (keyRight - keyLeft) * playerSpeed;
playerY = playerY + grv;

// check if we can jump & jumping
if(!place_meeting(x,y,obj_floor)) && keyJump
{
	if(isGrounded-- > 0)
	{
		playerY = playerJumpSpeed;
		isGrounded =  0;
		sprite_index = spr_jump;
		image_index = 0;
		
	}
}
if(!keyJump)
{
	sprite_index = spr_kirby_gen;
}


//floating
if(!place_meeting(x,y,obj_floor)) && keyFloat
{
	playerY = playerJumpSpeed + grv;
	sprite_index = spr_jump
//	draw_sprite(spr_float,1, x, y - 10);
}



//if (keyRight)
//{
//	image_index = spr_run;
//	image_xscale = 1;
//}

//if (keyLeft)
//{
//	image_index = spr_run;
//	image_xscale = -1;
//}

//check collisions

if(place_meeting((x+ playerX), y, obj_floor))
{
	while(abs(playerX) > 0.1) 
	{
		playerX *= 0.5;
		if(!place_meeting(x + playerX, y, obj_floor))
		{
			x += playerX;
		}
	}	
	playerX = 0;
}

x += playerX;

if(place_meeting(x, y + playerY, obj_floor))
{
	if(playerY > 0)
	{
		isGrounded = 6;
	}
	
	while(abs(playerY) > 0.1)
	{
		playerY *= 0.5;
		if(!place_meeting(x, y + playerY, obj_floor))
		{
			y += playerY;
		}
	}
	playerY = 0;
}
y += playerY;

//room_restart();

//kirby animations
//if keyJump
//{
	
//}

if (place_meeting(x,y, obj_all_enemies)) && !invincible
{
	global.hp --;
	invincible = true;
}


//boolean for invincible actions
if(invincible)
{
	//timer counts down to when it turns off
	invin_timer -= 3
	if(invin_timer < 0)
	{
		//recovery mode is off
		invincible = false
		//timer reset
		invin_timer = 180
	}
}
//when health = 0, restart progress
if (global.hp = 0)
{
	room_restart();	
}

if (place_meeting(x,y, obj_door))
{
	room_goto_next();
}