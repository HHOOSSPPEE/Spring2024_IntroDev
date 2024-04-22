//moving with WASD & not able to move through walls
if (keyboard_check(ord("W")) &&!place_meeting(x,y - wall_displacement,obj_wall))
{
	y = y - player_speed;
}

if (keyboard_check(ord("S")) &&!place_meeting(x,y + wall_displacement,obj_wall))
{
	y = y + player_speed;
}

if (keyboard_check(ord("A")) && !place_meeting(x - wall_displacement,y,obj_wall))
{
	x = x - player_speed;
}

if (keyboard_check(ord("D")) && !place_meeting(x + wall_displacement,y,obj_wall))
{
	x = x + player_speed;
}

//moving with arrow keys & not able to move through walls
if (keyboard_check(vk_up) &&!place_meeting(x,y - wall_displacement,obj_wall))
{
	y = y - player_speed;
}

if (keyboard_check(vk_down) &&!place_meeting(x,y + wall_displacement,obj_wall))
{
	y = y + player_speed;
}

if (keyboard_check(vk_left) && !place_meeting(x - wall_displacement,y,obj_wall))
{
	x = x - player_speed;
}

if (keyboard_check(vk_right) && !place_meeting(x + wall_displacement,y,obj_wall))
{
	x = x + player_speed;
}

//gun will be attached to the player
obj_gun.x=x+sprite_width/2;
obj_gun.y=y+sprite_height/4;

if place_meeting(x,y,obj_bullet_enemy)
{
	room_goto(rm_start);
}

if place_meeting(x,y,obj_enemy3)
{
	room_goto(rm_start);
}

if place_meeting(x,y,obj_bullet_boss)
{
	room_goto(rm_start);
}


if keyboard_check_pressed(vk_alt)
{
	room_goto_next();
}