if (currentindex < 5) {
	currentindex += 1;
   
    
	
} else {
    currentindex = 0;
}
audio_play_sound(Sound_changechoth,1,false);
 obj_pants.sprite_index = global.pant[currentindex];