if (obj_avatar.has_sword)
{
    // Set sword position to follow the avatar
    x = obj_avatar.x + 1;
    y = obj_avatar.y + 1;
}

if (obj_avatar.has_sword)
{
	if(keyboard_check(vk_left)) x -= 30;
	if(keyboard_check(vk_right)) x += 30;
	if(keyboard_check(vk_up)) y -= 30;
	if(keyboard_check(vk_down)) y += 30;
}

if (place_meeting(x,y,obj_avatar))
{
	ds_list_add(obj_avatar.inventory,id);
}