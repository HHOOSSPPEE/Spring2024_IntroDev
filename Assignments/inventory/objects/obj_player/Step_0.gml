<<<<<<< Updated upstream
var keyRight = keyboard_check(ord("D"));
var keyLeft = keyboard_check(ord("A"));
var keyUp = keyboard_check(ord("W"));
var keyDown = keyboard_check(ord("S"));

if global.alive = true
{
	if keyDown
	{
		y += playerSpeed
	}

	if keyUp
	{
		y -= playerSpeed
	}

	if keyRight
	{
		x += playerSpeed
	}
	
	if keyLeft
	{
		x -= playerSpeed
	}
}
//check if on path
if (!place_meeting(x,y,obj_falling1))
{
	global.alive = false;
}
if (place_meeting(x,y,obj_items1))
{
	getObject = true;
	
	
	if getObject = true
	{
		timer = 0
	}
}

if timer = 1
{
	InventoryAdd(obj_inventory,spr_items1);
}

timer += 1;

//old movement
/*
playerX = (keyRight - keyLeft) *playerSpeed;

playerY = playerY

playerY = playerY + grv;

//check if we can jump
if(isGrounded-- > 0) && (keyUp)
{
	playerY = playerJumpSpeed;
	isGrounded = 0;	
}

//check collisions X
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

//check collisions Y
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

=======
var keyRight = keyboard_check(ord("D"));
var keyLeft = keyboard_check(ord("A"));
var keyUp = keyboard_check(ord("W"));
var keyDown = keyboard_check(ord("S"));

if global.alive = true
{
	if keyDown
	{
		y += playerSpeed
	}

	if keyUp
	{
		y -= playerSpeed
	}

	if keyRight
	{
		x += playerSpeed
	}
	
	if keyLeft
	{
		x -= playerSpeed
	}
}
//check if on path
if (!place_meeting(x,y,obj_falling1))
{
	global.alive = false;
}
if (place_meeting(x,y,obj_items1))
{
	getObject = true;
	
	
	if getObject = true
	{
		timer = 0
	}
}

if timer = 1
{
	InventoryAdd(obj_inventory,spr_items1);
}

timer += 1;

//old movement
/*
playerX = (keyRight - keyLeft) *playerSpeed;

playerY = playerY

playerY = playerY + grv;

//check if we can jump
if(isGrounded-- > 0) && (keyUp)
{
	playerY = playerJumpSpeed;
	isGrounded = 0;	
}

//check collisions X
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

//check collisions Y
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

>>>>>>> Stashed changes
y += playerY;