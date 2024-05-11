//press draw
if(keyboard_check_pressed(ord("G")) & notchoosed){
    var shuffledArray = traitsArray;
    var n = array_length_1d(shuffledArray);
    
    
    for (var i = n - 1; i > 0; i--) {
        var j = irandom(i);
        var temp = shuffledArray[i];
        shuffledArray[i] = shuffledArray[j];
        shuffledArray[j] = temp;
    }
    

    global.word1 = shuffledArray[0];
    global.word2 = shuffledArray[1];
    global.word3 = shuffledArray[2];
    global.word4 = shuffledArray[3];
    global.word5 = shuffledArray[4];
	
	array_push(global.character_Master_array[0],global.word1);
	array_push(global.character_Master_array[0],global.word2);
	array_push(global.character_Master_array[0],global.word3);
	array_push(global.character_Master_array[0],global.word4);
	array_push(global.character_Master_array[0],global.word5);
	show_debug_message(global.character_Master_array[0]);
	
	global.Potion_1 = irandom_range(1, 5);	
	global.Potion_2 = irandom_range(1, 5);
	global.Potion_3 = irandom_range(1, 5);
	global.Potion_4 = irandom_range(1, 5);
	global.Potion_5 = irandom_range(1, 5);
	notchoosed = false;

    audio_play_sound(sound_slotmachine,1,false);
	show_debug_message(global.word1 + string(global.Potion_1) + ", " + global.word2 + string(global.Potion_2) +", " + global.word3 + string(global.Potion_3) + ", " + global.word4 + string(global.Potion_4) + ", " + global.word5 + string(global.Potion_5));
}


if(keyboard_check_pressed(ord("G")) & nextstep){
	room_goto(Room1);
}







