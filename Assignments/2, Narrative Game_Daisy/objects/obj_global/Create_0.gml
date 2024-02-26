//inventory
global.inventory = ds_list_create();

//taken
global.rug_taken = false;
global.mouse_taken = false;
global.flowers_taken = false;
global.yarn_taken = false;
global.bone_taken = false;
global.letter_read = false;
global.talk_with_shadow = false;
global.talk_with_dog = false;
global.read_tombstone = false;

//entry
global.room_1_entry = 0;
global.room_2_entry = 0;
global.room_5_entry = 0;

//play background sound
audio_play_sound(snd_bg_music, 1, true);
if(room == rm_1_home)
{
	audio_play_sound(snd_fire, 1, true);
}