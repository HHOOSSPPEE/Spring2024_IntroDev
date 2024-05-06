//set variables
text[0] = "... *press ENTER to continue."
text[1] = "Wake up...!"
text[2] = "You find yourself in a ghost factory."
text[3] = "Wait...but..."
text[4] = "No time for questions, just go and capture some ghosts!"

text_current = 0;
text_last = 4;
text_width = room_width - 200;
text_x = 100;
text_y = 250;

char_current = 1;
char_speed =  0.25;

text[text_current] = scr_intro(text[text_current], text_width);

//play audio
audio_play_sound(snd_type, 1, true);