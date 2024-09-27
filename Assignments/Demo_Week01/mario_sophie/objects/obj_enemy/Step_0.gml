/// @description Insert description here
// You can write your code in this editor

move_and_collide(move_speed, 0, obj_manager.collidable);

if(place_meeting(x + sprite_width/2 + 1, y, obj_manager.collidable) || place_meeting(x - sprite_width/2 -1, y, obj_manager.collidable))
{
	move_speed *= -1;
}


if(kill)
{
	move_speed = 0;
	sprite_index = spr_enemy_dead;
	timer--;
	if(timer <= 0)
	{
		instance_destroy();
	}
}

if(place_meeting(x, y-sprite_height-2, obj_mario))
{
	kill = true;
	obj_mario.move_y -= 3;
	obj_controller.points += 1;
}
else if(place_meeting(x - sprite_width/2 -2, y, obj_mario) || place_meeting(x + sprite_width/2 +2, y, obj_mario))
{
	obj_mario.hurt = true;
}