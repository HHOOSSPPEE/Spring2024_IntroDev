//inputs
var keyRight = keyboard_check(vk_right);
var keyLeft = keyboard_check(vk_left);
var keyJump = keyboard_check(ord("Z"))
var keyFloat = keyboard_check(vk_up);
var floatStop = keyboard_check_released(vk_up)

//where are we going
//if jumping kirb's X is normal
if (jumping = true)
{
	playerX = (keyRight - keyLeft) *playerSpeed;
}
// if walking kirb x is normal speed
if (walking = true)
{
	playerX = (keyRight - keyLeft) *playerSpeed;
}

//if floating kirb's X is slower
if (floating = true)
{
	playerX = (keyRight - keyLeft) *playerFloatSpeedX;
}

playerY = playerY + grv;

//if player is jumping they have a diff grav
if (jumping = true) && (keyJump)
{
	grv = grvjump;
}

//if player is floating they have diff grav
if (floating = true) && (keyFloat)
{
	grv = grvfloat;
}

//check if we can jump
if(isGrounded-- > 0) && (keyJump) && (counter = 0)
{
	playerY = playerJumpSpeed;
	isGrounded = 0;	
	
	floating = false;
	jumping = true;
}

//floating/ jump counter
if (floating = true)
{
	counter = 1;
}
if (jumping = true)
{
	counter = 0;
}

//floating
if (keyFloat)
{
	playerY = playerFloatSpeed;
	
	floating = true;
	jumping = false;
}

if (floatStop)
{
	grv = grvstop;
}

//check collisions
if(place_meeting((x + playerX), y, obj_collider))
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

if(place_meeting(x,y + playerY, obj_collider))
{
	if(playerY > 0)
	{
		isGrounded = 6;
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

//collision with enemies
if((place_meeting(x,y, obj_enemy_parent)) && (invincible = false))
{
	playerHealth = playerHealth - 1;
	invincible = true;
}

if(playerHealth <= 0)
{
	room_restart();
}

//collision enemy timer -invincible timer
if (invincible = true)
{
	invincibleTimer = invincibleTimer -1;
	
	if (invincibleTimer <= 0)
	{
		invincible = false;
	}
}

if (invincible = false)
{
	invincibleTimer = 90;
}

//shooting
if (keyboard_check_pressed(ord("X"))) && (floating = true)
{
	var _inst = instance_create_layer(x,y,"Bullets", obj_puff);
	with (_inst)
	{
		direction = 180;
	}
	
	
	floating = false;
	jumping = true;
}

if	(keyRight)
{
	shootingRight = true;
}

if (keyLeft)
{
	shootingRight = false;
}

//animations
if (keyRight) && (jumping = true)
{ 
	image_xscale = 1
	sprite_index = spr_kirby_run;
}

else if (keyLeft) && (jumping = true)
{ 
	image_xscale = -1
	sprite_index = spr_kirby_run; 
}

else if (jumping = true)
{ sprite_index = spr_kirby;}

if (keyRight) && (floating = true)
{ 
	image_xscale = 1
	sprite_index = spr_kirby_float;
}

else if (keyLeft) && (floating = true)
{ 
	image_xscale = -1
	sprite_index = spr_kirby_float; 
}

else if (keyFloat) && (floating = true)
{
	sprite_index = spr_kirby_float; 
}

if ((isGrounded <= 0) && (floating = false))
{
	sprite_index = spr_kirby_jumping_falling;
}

/*else ((keyRight) && (floating = true))
{
	image_xscale = 1
	sprite_index = spr_kirby_floating;
}