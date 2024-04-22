global.money = 50;
global.readers = 10;
global.production = 10;
global.pps = 2 * global.readers;

alarm_intervals = game_get_speed(gamespeed_fps) * 30;

alarm[0] = alarm_intervals;