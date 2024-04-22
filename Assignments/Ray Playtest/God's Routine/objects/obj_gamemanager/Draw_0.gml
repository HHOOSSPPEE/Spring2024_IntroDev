

if(notchoosed){
	draw_set_font(Font1);
	draw_set_color(c_white)
	draw_text_transformed(420,730,"Press ENTER to Pull the Slot Machine",1.5,1.5,0);
}
if(notchoosed = false){
	draw_set_font(Font1);
	draw_set_color(c_white)
	draw_text_transformed(420,730,"Press SPACE to Collect Potions",1.5,1.5,0);
	draw_set_color(#DE1A1A);
	draw_text_ext_transformed(250,298,global.word1,20,80,1.5,1.5,0);
	draw_text_ext_transformed(300,400,string(global.Potion_1),15,80,2,2,0);
	draw_set_color(#F7B32B);
	draw_text_ext_transformed(400,298,global.word2,20,80,1.5,1.5,0);
	draw_text_ext_transformed(460,400,string(global.Potion_2),15,80,2,2,0);
	draw_set_color(#498467);
	draw_text_ext_transformed(550,298,global.word3,20,80,1.5,1.5,0);
	draw_text_ext_transformed(630,400,string(global.Potion_3),15,80,2,2,0);	
	draw_set_color(#14BDEB);
	draw_text_ext_transformed(725,298,global.word4,20,80,1.5,1.5,0);
	draw_text_ext_transformed(780,400,string(global.Potion_4),15,80,2,2,0);
	draw_set_color(#B4417C);
	draw_text_ext_transformed(875,298,global.word5,20,80,1.5,1.5,0);
	draw_text_ext_transformed(940,400,string(global.Potion_5),15,80,2,2,0);
	nextstep = true;

}




//red/yellow/green/blue/pink
