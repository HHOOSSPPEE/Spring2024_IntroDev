depth = -9999;

//textbox parameters
textbox_width = 300;
textbox_height = 100;
border = 12;
line_sep = 28;
line_width = textbox_width - border*2;
text_spr = spr_textbox;
text_image = 0;
text_image_speed = 0;

//the text
page = 0;
page_number = 0;
text[0] = "";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_speed = 1;

//options
option[0] = "";
option_link_id[0] = -1;
option_pos = 0;
option_number = 0;

setup = false;
accept_key = keyboard_check_pressed(ord("X"));

drawn = true;