//input
var keyRight = keyboard_check(ord("D"));
var keyLeft = keyboard_check(ord("A"));
var keyUp = keyboard_check(ord("W"));
var keyDown = keyboard_check(ord("S"));
var keyAttack = keyboard_check(ord("F"));
var keyInteract = keyboard_check(ord("G"));

//moving
if (keyLeft) x -= player_speed;
if (keyRight) x += player_speed;
if (keyUp && !place_meeting(x, y + 10, tmWalls)) y -= player_speed;
if (keyDown) y += player_speed;

if (keyAttack)
{
	isAttack = true;
}

x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height - 20);

//direction
if (keyRight) {image_xscale = 1;}
if (keyLeft) {image_xscale = -1;}

//animation
if (isAttack)
{
	attack_timer++;
	sprite_index = spr_p2_attack
	if (attack_timer > attack_timer_max)
	{
		isAttack = false;
		attack_timer = 0;
	}
}
else if (keyRight || keyLeft)
{
	sprite_index = spr_p2_walk;
	player_speed = 1.5;
}
else sprite_index = spr_p2;

//invincible
if (invincible)
{
	image_alpha = .5;
}
else image_alpha = 1;


//attacking enemy
if (isAttack && place_meeting(x, y, obj_all_enemy))
{
	var enemy = instance_place(x, y, obj_all_enemy)
	enemy.enemy_health--;
}

//attack from enemy
if (place_meeting(x, y, obj_all_enemy) && !invincible && sprite_index != spr_p2_attack && !isDead)
{
	player_health--;
	invincible = true;
	global.p2_health = player_health;
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

//if player lose all health
if (player_health < 1)
{
	isDead = true;
	dead_timer++
	sprite_index = spr_p2_dead;
	if (dead_timer > dead_timer_max)
	{
		dead_timer = 0;
	}
}

if (isDead)	
{	
	player_speed = 0;
	player_health = 0;
}

//check if all enemy dead and potion collected
if (!instance_exists(obj_enemy2) && !instance_exists(obj_enemy))
{
	isClear = true;
}
else isClear = false;

//collecting curses
var potion = instance_place(x, y, obj_potion);
if (place_meeting(x, y, potion) && keyInteract && isClear)
{
	if (room == rm_main)
	{
		global.p2_curse1 = true;
	}
	else if (room = rm_room2)
	{
		global.p2_curse2 = true;
	}
	else if (room == rm_room3)
	{
		global.p2_curse3 = true;
	}
	else if (room == rm_room4)
	{
		obj_p1.isDead = true;
	}
	
	instance_destroy(potion);
	obj_textbox.visible = false;
	
	player_health--;
	invincible = true;
	global.p2_health = player_health;
}

if (global.p2_curse1) 
{
	player_speed = 2;
}
if (global.p2_curse2) 
{
	invincible_timer_max = 180;
}
if (global.p2_curse3) 
{
	invincible = true;
}