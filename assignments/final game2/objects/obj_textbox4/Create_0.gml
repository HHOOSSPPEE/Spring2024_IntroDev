depth = -9999;

//textbox parameters
textbox_width = 350;
textbox_height = 100;
border = 8;
line_sep = 12;
line_width = textbox_width - border*2;
txtb_spr = spr_text;
txtb_img = 0;
txtb_img_spd = 0;

//the text
page = 0;
page_number = 0;
text[0] = "You're not from here, are you?";
text[1] = "I know.";
text[2] = "But I know who you are.";
text[3] = "You don't belong in this world.";
text[4] = "YOU'RE NOT SUPPOSED TO EXIST.";
text[5] = "YOU DON'T EXIST.";
text[6] = "AND YOU NEVER WILL.";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd = 1;

setup = false;

txtb_open = false;