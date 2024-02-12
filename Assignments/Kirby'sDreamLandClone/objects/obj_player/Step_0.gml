   //inputs

var keyRight = keyboard_check(vk_right);
var keyLeft = keyboard_check(vk_left);
var keyJump = keyboard_check_pressed(ord("X"));
var altKeyJump = keyboard_check(vk_up);
var keyAttack = keyboard_check_pressed(ord("Z"))

//where are we going
playerX = (keyRight - keyLeft) * playerSpeed;
playerY = playerY + grv;

if (floating)
{
	playerY = playerY + altGrv;
}

//check if we can jump
if (isGrounded-- > 0) && (keyJump)
{
	playerY = playerJumpSpeed;
	isGrounded = 0;
}


//floating
if (altKeyJump)
{
	floating = true;
	playerY = playerJumpSpeed;
}

if (keyJump) && (floating)
{
	playerY = playerJumpSpeed;
}


//attack

if (canShoot)
{
	instance_create_layer(x,y,"Instances", obj_projectile)
	floating = false;
	canShoot = false;
}
if (keyAttack && floating)
{
	canShoot = true;
}

if (!floating)
{
	if (keyAttack)
	{
		
	}
		
}



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

x += playerX;

if(place_meeting(x, y + playerY, obj_collider))
{
	if(playerY > 0)
	{
		isGrounded = 6;
	}
	
	while(abs(playerY) > 0.1)
	{
		playerY *= 0.5;
		if(!place_meeting(x, y+ playerY, obj_collider))
		{
			y += playerY;
		}
	}
	playerY = 0;
}

y += playerY;

//player health
if (playerHealth <= 0 && !testing)
{
	room_restart()
}

//collision with enemies
if ((place_meeting(x, y, obj_enemy_1) || place_meeting(x, y, obj_enemy_2) || place_meeting(x, y, obj_enemy_3) || place_meeting(x, y, obj_enemy_4) || place_meeting(x, y, obj_enemy_5)) && !alarm_get(0) > 0)
{
	playerHealth -= 1;
	alarm_set(0, 60);
}