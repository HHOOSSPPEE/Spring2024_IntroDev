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
text[0] = "Did we find our way out?";
text[1] = "Good.";
text[2] = "You're safe now.";
text[3] = "Ending 2: Good end, you collected enough exp";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd = 1;

setup = false;

txtb_open = false;