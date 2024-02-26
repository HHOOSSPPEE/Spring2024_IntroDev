//When collide, the star be collected
if (place_meeting(x,y,obj_avatar))
{
	taken = true;
	ds_list_add(obj_avatar.inventory,id);
	visible = false;
}