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
text[0] = "Are you the one at fault...?";
text[1] = "Oh, but it doesn't matter anyways.";
text[2] = "You don't remember anything, do you?";
text[3] = "You think you can just run away??";
text[4] = "You don't remember what happened to them.";
text[5] = "You need to stop living inside of your head.";
text[6] = "Get out.";
text[7] = "Stop hiding";
text[8] = "You need to face what you've done.";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd = 1;

setup = false;

txtb_open = false;