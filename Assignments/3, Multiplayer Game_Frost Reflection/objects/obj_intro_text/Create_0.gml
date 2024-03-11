//set variables
text[0] = "... *press ENTER to continue."
text[1] = "Once upon a time there's a small village in which hides a secret mirror."
text[2] = "It is said that those who find the mirror can realize their wishes and live a new life."

text_current = 0;
text_last = 2;
text_width = room_width - 550;
text_x = 300;
text_y = 250;

char_current = 1;
char_speed =  0.25;

text[text_current] = scr_intro(text[text_current], text_width);