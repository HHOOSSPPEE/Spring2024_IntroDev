
//inputs

var key_right = keyboard_check(ord("D"));
var key_left = keyboard_check(ord("A"));
var key_jump = keyboard_check_pressed(vk_space);
var end_jump = keyboard_check_released(vk_space);

//going
player_x = (key_right - key_left) * player_speed;
player_y = player_y + grv;

//check to jump

if(end_jump)
{
	is_grounded = 25;
	
} 

if(is_grounded -- >0) && (key_jump)
{
	player_y = player_jumpspeed;
	is_grounded = 0;
}


//animations
if(keyboard_check(ord("D") && ord("A")))
{
	sprite_index = spr_player_move;
}
if(!keyboard_check(ord("D") && ord("A")))
{
	sprite_index = spr_player;
}

//check collisions
if(place_meeting(x + player_x, y, obj_collider))
{
	while(abs(player_x > 0.1))
	{
		player_x *= 0.5;
		if(!place_meeting(x+player_x, y, obj_collider))
		{
			x += player_x;
		}
	}
	player_x = 0;
}

x += player_x;


if(place_meeting(x,y + player_y, obj_collider))
{
	if(player_y > 0)
	{
		is_grounded = 6;
	}
	
	while(abs(player_y) > 0.1)
	{
		player_y *= 0.5;
		if(!place_meeting(x, y + player_y, obj_collider))
		{
			y += player_y;
		}
	}
	player_y = 0;
}
y += player_y;

if(invincible)
{
	invicible_timer++;
	if(invincible_timer > invincible_duration)
	{
		invincible = false;
		invincible_timer = 0;
	}
}
show_debug_message(player_hp)
if(place_meeting(x,y,obj_tp))
{
	var s = instance_place(x,y,obj_tp)
	global.protag_hp = player_hp;
	//room_goto(s.destination_room)
	room_goto(Room2);
}

if(place_meeting(x,y,obj_enemy))
{
	player_hp = 0;
}

if(player_hp = 0)
{
	room_restart()
}















