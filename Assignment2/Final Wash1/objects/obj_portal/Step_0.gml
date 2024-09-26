visible=false;
if(global.washed) visible=true;


if(place_meeting(x,y,obj_player)&&keyboard_check_pressed(vk_space)&&global.washed)
{
	
   room_goto(obj_portal.nextt)
   audio_play_sound(sound_portal, 1, false);
	global.washed=false;
}
	
