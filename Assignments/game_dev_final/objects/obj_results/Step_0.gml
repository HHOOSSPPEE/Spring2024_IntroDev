if (global.cleared = true)
{
	instance_create_layer(x,y,"Results",obj_cleared);
}

if (global.cleared1 = true)
{
	instance_create_layer(x,y,"Results",obj_cleared1);
}

if(keyboard_check(vk_enter)) && (global.cleared = true)
{
	room_goto_next();
}

//if all enemies are killed then send player to the next room
if(keyboard_check(vk_enter)) && (global.cleared1 = true)
{
	room_goto_next();
}


/*
if(keyboard_check(vk_enter))
{
	timer = room_speed * 5; //set time to 5 seconds worth of frames 
}

if(timer > 0)
{ //if timer is greater than 0
	timer--;
}

if(timer == 0)
{ //if timer is 0
	timer = -1; //make timer negative
	show_debug_message("results");
}

show_debug_message(timer);

/*
if (timer > 0)
{
	timer--;
}

if (timer == 0)
{
	timer = timer -1;
	show_debug_message("cleared");
}