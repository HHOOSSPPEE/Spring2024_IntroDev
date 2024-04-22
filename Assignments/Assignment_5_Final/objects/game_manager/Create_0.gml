image_speed = 0;

//sprite image
current_image = 0;

//time
timer_min = 0 ;
timer_min_max = 20 * 60; //20 sec every 4 hours

timer_hour = 8;
isWhen = "AM";

ifRun = true; //turns false at end of day


//Start time 8:00 AM
//Afternoon 12:00 PM
//Evening 4:00 PM
//Night 8:00 PM
//End time 12:00 AM

/*
20 sec = 4 hours
1200 fps = 4 hours
5 sec = 1 hour
300 fps = 1 hour
80 sec = 16 hour
*/

//pass out timer
faint_timer = 0;
faint_timer_max = 3 * 60;
isfaint = false;
