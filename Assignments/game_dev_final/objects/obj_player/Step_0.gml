//moving with WASD & not able to move through walls
if (keyboard_check(ord("W")) &&!place_meeting(x,y - wall_displacement,obj_wall))
{
	y = y - player_speed;
	sprite_index = spr_player_runningy_up;
	image_xscale = 1;
}
if (keyboard_check(ord("S")) &&!place_meeting(x,y + wall_displacement,obj_wall))
{
	y = y + player_speed;
	sprite_index = spr_player_runningy_down;
	image_xscale = 1;
}

if (keyboard_check(ord("A")) && !place_meeting(x - wall_displacement,y,obj_wall))
{
	x = x - player_speed;
	sprite_index = spr_player_runningx;
	image_xscale = -1;
}

if (keyboard_check(ord("D")) && !place_meeting(x + wall_displacement,y,obj_wall))
{
	x = x + player_speed;
	sprite_index = spr_player_runningx;
	image_xscale = 1;
}

if !(keyboard_check(ord("W"))) && !(keyboard_check(ord("A"))) && !(keyboard_check(ord("S"))) && !(keyboard_check(ord("D")))
{
	sprite_index = spr_player;
}

//moving with arrow keys & not able to move through walls
/*if (keyboard_check(vk_up) &&!place_meeting(x,y - wall_displacement,obj_wall))
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
*/
//gun will be attached to the player
obj_gun.x=x;
obj_gun.y=y-25;

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