//set variables
text[1] = "... *press ENTER to continue."
text[2] = "..."
text[3] = "See, I'm the only fox in this village."
text[4] = "..."
text[5] = "I want to be human."
text[6] = "..."
text[7] = "I want a new life..."
text[8]=  "Sure."

text_current = 1;
text_last = 8;
text_width = room_width - 300;
text_x = 660;
text_y = 250;

char_current = 1;
char_speed =  0.25;

text[text_current] = scr_intro(text[text_current], text_width);