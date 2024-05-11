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
text[0] = "This is all your fault.";
text[1] = "You killed him.";
text[2] = "You killed all of them";
text[3] = "You ran away thinking you can just forget about everything.";
text[4] = "No. You WILL pay for your sins.";
text[5] = "Ending 1: Bad ending, not enough exp collected";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd = 1;

setup = false;

txtb_open = false;