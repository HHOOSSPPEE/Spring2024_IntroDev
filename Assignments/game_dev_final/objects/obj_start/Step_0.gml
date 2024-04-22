if place_meeting(x,y,obj_bullet)
{
	room_goto(rm_1);
}

global.counter = 0;

if keyboard_check_pressed(vk_enter)
{
	room_goto(rm_1);
}