/// @description Insert description here
// You can write your code in this editor
x -= walk_speed



//collision w enviro
if !place_meeting(x,y,obj_collider)
{
	y += grv
}

if place_meeting(x-5, y- 20, obj_collider)
{
	image_xscale =-1
	x+= walk_speed
}
if place_meeting(x+5, y- 20, obj_collider)
{
	image_xscale =1
	x-= walk_speed
}
//player interaction
if place_meeting(x,y,obj_player) && obj_player.isGrounded < 0
{
	walk_speed = 0
	sprite_index = spr_goomba_squish
	timer += timer_add;
	
	if timer = 2
	{
		global.points += 100
		instance_destroy()
	}
}

if place_meeting (x,y, obj_player) && obj_player.isGrounded >=0
{
	obj_player.hp -= 1
}
if place_meeting (x,y, obj_player) && obj_player.isGrounded >=0 && obj_player.isBig = true
{
	obj_player.hp -= 1
}
// hazard
if place_meeting(x,y,obj_hazard)
{
	instance_destroy()
}

