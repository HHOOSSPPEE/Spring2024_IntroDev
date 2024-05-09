randomize();

global.money = 50;
global.readers = 10;
global.production = 10;
global.pps = 2 * global.readers;
global.npc_count = 4;

npc_text_next = 0;

alarm_intervals = game_get_speed(gamespeed_fps) * 30;

npc_alarm = game_get_speed(gamespeed_fps) * 10;

alarm[0] = alarm_intervals;
//alarm[1] = npc_alarm;

//npc_text_options = 4

//npc_text = ds_list_create();
//for (var i = 1; i <= npc_text_options; i++)
//{
//	ds_list_add(npc_text, i)
//}

//ds_list_shuffle(npc_text);