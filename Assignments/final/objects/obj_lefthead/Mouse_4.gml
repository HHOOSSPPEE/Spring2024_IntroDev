if (currentindex < 4){
	currentindex += 1;
    
    
	
} else {
    currentindex = 0;
}
audio_play_sound(Sound_changechoth,1,false);
obj_head.sprite_index = global.head[currentindex];