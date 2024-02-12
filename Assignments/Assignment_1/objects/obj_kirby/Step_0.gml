//inputs
var keyRight = keyboard_check(vk_right);
var keyLeft = keyboard_check(vk_left);
var keyJump = keyboard_check(vk_up);
var keyDown = keyboard_check(vk_down);
var keyX = keyboard_check(ord("X"));
var keyZ = keyboard_check_pressed(ord("Z"));

//where we going
playerX = (keyRight - keyLeft) * playerSpeed;
playerY = playerY + grv;

//change direction
if (keyLeft)
{ 
	image_xscale = -1;
}
else if (keyRight)
{
	image_xscale = 1;
}

//jumping
if (keyZ && place_meeting(x, y + 1, tmFloor))
{
	playerY = playerJumpSpeed;
}

//float animation
if (keyJump && y > 10)
{
	playerY = playerJumpSpeed;
	isFlying = true;
}

if (isFlying)
{
	sprite_index = spr_kirby_fly;
	if (keyX)
	{
		isFlying = false;
	}
}

//animations
else if ((keyRight || keyLeft) && place_meeting(x, y + 5, tmFloor))
{
	sprite_index = spr_kirby_walking;
}
else if (keyDown) {sprite_index = spr_kirby_duck;}
else if (keyX && !place_meeting(x, y + 5, tmFloor)) {sprite_index = spr_kirby_falling;}
else if (keyX && place_meeting(x, y + 5, tmFloor)) {sprite_index = spr_kirby_suck;}
else if (place_meeting(x, y + 5, tmFloor)) {sprite_index = spr_kirby;}

//sucking
if (keyX && place_meeting(x, y + 5, tmFloor))
{
	var enemyDistance = instance_nearest(x, y, obj_enemy)
	if (distance_to_object(enemyDistance) < 20)
	{
		enemyDistance.x --;
		if (place_meeting(x + 2, y, enemyDistance))
		{
			instance_destroy(enemyDistance);
		}
	}
}

//collision with enemies

global.health = health;
if (place_meeting(x, y, obj_enemy) && !invincible)
{
	health--;
	invincible = true;
	var enemy = instance_place(x, y, obj_enemy)
	instance_destroy(enemy);
}

else if (place_meeting(x, y, obj_enemy) && invincible)
{
	var enemy = instance_place(x, y, obj_enemy)
	instance_destroy(enemy);
}
show_debug_message(health);

//health
if (invincible)
{
	invincible_timer++;
	if (invincible_timer > invincible_timer_max)
	{
		invincible = false;
		invincible_timer = 0;
	}
}
if (health = 0 || place_meeting(x, y, obj_pit))
{
	global.total_lives--;
	room_restart();
}
if (global.total_lives < 0)
{
	room_goto(rm_game_over);
}

//check collision
if (place_meeting((x + playerX), y, tmFloor))
{
	
	while (abs(playerX) > 0.1)
	{
		playerX *= 0.5;
		if (!place_meeting((x + playerX), y, tmFloor))
		{
			x += playerX;
		}
	}
	
	playerX = 0; 
}

x += playerX;

if (place_meeting(x, (y + playerY), tmFloor))
{
	if (playerY > 0)
	{
		isGrounded = 6;
	}
	
	while (abs(playerY) > 0.1)
	{
		playerY *= 0.5;
		if (!place_meeting(x, (y + playerY), tmFloor))
		{
			y += playerY;
		}
	}
	
	playerY = 0;
}

y += playerY;