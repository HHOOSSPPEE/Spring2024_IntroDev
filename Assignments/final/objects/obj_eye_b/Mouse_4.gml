if (currentindex < 3) { // Use < instead of <=
    currentindex += 1;
} else {
    currentindex = 0;
}
obj_eye.sprite_index = global.eye[currentindex];
audio_play_sound(Sound_changechoth,1,false);
