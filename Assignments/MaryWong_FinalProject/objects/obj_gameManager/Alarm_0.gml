global.money += global.pps;

var printnum = choose(1,2,3);

if (obj_printer.printer_id == printnum) obj_printer.hp = 0;
show_debug_message(printnum);

alarm[0] = alarm_intervals;