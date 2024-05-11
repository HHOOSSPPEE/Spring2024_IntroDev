draw_self();
if(room == room_mc3){
	
	draw_set_font(Font1);
	draw_set_color(c_black);
	draw_text_ext_transformed(room_width/2 - 30,20,global.character_Master_array[0][4] + " is created!",20,300,3,3,0);
	draw_text_ext_transformed(room_width/8,300,global.character_Master_array[0][4] + " is special at:",20,300,3,3,0);
	draw_text_ext_transformed(room_width/8,350,global.word1,20,300,2,2,0);
	draw_text_ext_transformed(room_width/8,400,global.word2,20,300,2,2,0);
	draw_text_ext_transformed(room_width/8,450,global.word3,20,300,2,2,0);
	draw_text_ext_transformed(room_width/8,500,global.word4,20,300,2,2,0);
	draw_text_ext_transformed(room_width/8,550,global.word5,20,300,2,2,0);
}












