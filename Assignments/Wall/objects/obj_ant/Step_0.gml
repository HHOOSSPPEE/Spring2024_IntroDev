var keyUp = keyboard_check(ord("W"));
var keyDown = keyboard_check(ord("S"));
var keyRight = keyboard_check(ord("D"));
var keyLeft = keyboard_check(ord("A"));

var playerX = (keyRight - keyLeft)
var playerY = (keyDown - keyUp)

move_and_collide(playerX * ant_speed, playerY * ant_speed, obj_collider)

//inventory


//animations
//going up
if keyboard_check_pressed(ord("W"))
{
	image_angle = 0;
}

else if (keyUp)
{
	image_xscale = 1;
	image_yscale = 1;
	sprite_index = spr_ant_run;
}

//going down
else if keyboard_check_pressed(ord("S"))
{
	image_angle = 0;
}

else if (keyDown)
{
	image_xscale = -1;
	image_yscale = -1;
	sprite_index = spr_ant_run;
}

//going right
else if keyboard_check_pressed(ord("D"))
{
	image_angle = 90;
}

else if (keyRight)
{
	sprite_index = spr_ant_run;
}

//going left
else if keyboard_check_pressed(ord("A"))
{
	image_angle = -90;
}

else if (keyLeft)
{
	sprite_index = spr_ant_run;
}

else
{sprite_index = spr_ant;}


if keyboard_check(vk_escape) 
{room_goto(rm_3)};



//diff spawn point after cutscene
/*if (global.suitcase = true)
{
	timer +=1;
	if timer = 1
	{
	obj_ant.x = obj_spawner1.x;
	obj_ant.y = obj_spawner1.y;
	}
}


if (keyUp)
{
	y -= ant_speed
	running = true;
}
else
{ 
	running = false;
}

if (keyDown)
{
	y += ant_speed
	running = true;
}

if (keyLeft)
{
	x -= ant_speed
	running = true;
}

if (keyRight)
{
	x += ant_speed
	running = true;
}