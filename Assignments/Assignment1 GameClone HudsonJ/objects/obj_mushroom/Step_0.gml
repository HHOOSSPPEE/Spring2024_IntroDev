/// @description Insert description here
// You can write your code in this editor

//if !place_meeting(x,y,obj_collider)
//{
x+= 2
//}
if !place_meeting(x,y,obj_collider)
{
	y += grv
}
if place_meeting(x,y - 20,obj_collider)
{
	 x -= 2
}
if place_meeting(x,y,obj_player)
{
	global.points += 1000
	obj_player.isBig = true
	obj_player.y -= 30
	instance_destroy()
}