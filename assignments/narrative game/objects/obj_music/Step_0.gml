if (mouse_check_button(mb_left))
{
	audio_pause_sound(snd_bg);
	audio_play_sound(snd_combat,1000,true);
}

if (mouse_check_button(mb_none)) && (mus_timer = true)
{
	audio_pause_sound(snd_combat);
	audio_resume_sound(snd_bg);
}

mus_timer --;
if (mus_timer > 0)
{
	timer_pause = false;
}


if (mus_timer <= 0)
{
	timer_pause = true;
}

