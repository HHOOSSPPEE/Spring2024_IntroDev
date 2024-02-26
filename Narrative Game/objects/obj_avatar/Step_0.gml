//Linking WASD to directions
if (keyboard_check(ord("W")) && !place_meeting(x,y-10,obj_obstacle))
{
    y -= avatar_speed;
	if(y < (obj_camera.y + obj_camera.view_height)-(200 + sprite_height)) obj_camera.y -= avatar_speed;
}
if (keyboard_check(ord("S")) && !place_meeting(x,y+10,obj_obstacle))
{
    y += avatar_speed;
	if(y > obj_camera.y + 200) obj_camera.y += avatar_speed;
}
if (keyboard_check(ord("A")) && !place_meeting(x-10,y,obj_obstacle))
{
    x -= avatar_speed;
	if(x < (obj_camera.x + obj_camera.view_width)-(300 + sprite_width)) obj_camera.x -= avatar_speed;
}
if (keyboard_check(ord("D")) && !place_meeting(x+10,y,obj_obstacle))
{
    x += avatar_speed;
	if(x > obj_camera.x + 300) obj_camera.x += avatar_speed;
}


//Check collision with the magic sword
if (!has_sword && place_meeting(x,y,obj_sword))
{
    has_sword = true;
}


//Check collision with the door, go to the nest room when reaching the door & items are found
if (place_meeting(x,y,obj_door) && room == rm_first)
{
	var sword_found = false;
	var key_found = false;
	
	for (var i = 0; i < ds_list_size(obj_avatar.inventory); i++)
	{
		if (obj_avatar.inventory[|i].item_name == "magic sword")
		{
			sword_found = true;
		}
		if (obj_avatar.inventory[|i].item_name == "key")
		{
			key_found = true;
		}
	}
	
	if (sword_found && key_found)
	{
		room_goto(obj_door.destination_room);
		audio_play_sound(snd_door, 1, false);
		return;
	}
	
	obj_text_box.activate_text_box("The door seems to be locked.");
}
	
if (place_meeting(x,y,obj_door) && room == rm_house)
{
	room_goto(obj_door.destination_room);
	audio_play_sound(snd_door, 1, false);
}

