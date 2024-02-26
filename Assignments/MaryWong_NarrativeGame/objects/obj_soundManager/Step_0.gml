if((audio_is_playing(Sound2) == false) && !playedSound && obj_textBox.textcount == 4)
{
    audio_play_sound(Sound2, 10, false);
	playedSound = true;
}