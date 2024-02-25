//input
var keyRight = keyboard_check(vk_right);
var keyLeft = keyboard_check(vk_left);
var keyJump = keyboard_check(vk_up);

//where are we going
playerX = (keyRight - keyLeft) * player_speed;
playerY = playerY + grv;

//jumping
if (keyJump && place_meeting(x, y + 1, tmFloor))
{
	playerY = player_jump_speed
	sprite_index = spr_player_jump;
	audio_play_sound(snd_jumping, 10, false);
}

//direction
if (keyRight) {image_xscale = 1;}
if (keyLeft) {image_xscale = -1;}

//animation
if (keyRight || keyLeft)
{
	sprite_index = spr_player_walk;
}
else {sprite_index = spr_player;}

//damage
if (place_meeting(x, y, tmDanger) && !invincible)
{
	player_health--;
	invincible = true;
	global.health = player_health;
}

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

//if player dies or falls into pit
if (player_health < 0 || place_meeting(x, y, obj_pit))
{
	player_lives--;
	player_health = 4;
	candy_collected = 0;
	global.health = player_health;
	global.lives = player_lives;
	global.candy = candy_collected;
	game_restart();
}

if (player_lives < 0)
{
	room_goto(rm_game_over);
}

//candy
if (place_meeting(x, y, obj_candy))
{
	candy_collected++;
	global.candy = candy_collected;
	var candy = instance_place(x, y, obj_candy);
	instance_destroy(candy);
	audio_play_sound(snd_candy, 10, false);
}

if (global.candy > 19)
{
	global.cake = true;
}


//check collisions - these happen BEFORE we move so the math is checking where we are about to be
if (place_meeting(x + playerX, y, tmFloor)) //if colliding with floor tile layer on X
{ 
	//0.1 is our precision - how close we allow player to get to the object - higher is a  bigger gap
	while(abs(playerX) > 0.1) //if the player is moving in horizontal even tho it is running into a wall
	{
		playerX *= 0.5; //half x movement
		if(!place_meeting(x + playerX, y, tmFloor))
		{ 

			x += playerX;
		}
	}
	playerX = 0; //set to zero if there is a collision
}

x += playerX; //now we move

if (place_meeting(x, y + playerY, tmFloor)) //if colliding with floor tile layer on Y
{ 
	if (playerY > 0)
	{
		isGrounded = 6; //this is  our jump buffer - basically a nice little hang time for players to still be able to jump after dropping a bit
	}
	
	while(abs(playerY) > 0.1) 
	{
		playerY *= 0.5; 
		if(!place_meeting(x,y + playerY, tmFloor)) //use obj_collider too
		{ 
			y += playerY;
		}
	}
	
	playerY = 0;
}

y += playerY; //now we move

//character cant move off screen
x = clamp(x, 0, room_width);