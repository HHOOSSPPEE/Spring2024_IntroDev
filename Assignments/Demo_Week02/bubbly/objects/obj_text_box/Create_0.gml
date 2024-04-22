text = "abc";

active_timer = 0;
active_duration = 5;

function Activate_Text_Box(new_text)
{
	visible = true;
	audio_play_sound(snd_click, 0, false);
	text = new_text;
}