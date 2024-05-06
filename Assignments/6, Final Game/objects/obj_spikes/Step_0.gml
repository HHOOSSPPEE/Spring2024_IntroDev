//hurt
if(can_hurt == true && place_meeting(x, y, obj_player))
{
	audio_play_sound(snd_hurt, 1, false);
	obj_player.hp -= 1;
	can_hurt = false;
}

//safe time
if(can_hurt == false)
{
	timer ++;
	if(timer >= safe_time)
	{
		can_hurt = true;
		timer = 0;
	}
}