if (taken) visible = false;

if ((place_meeting(x,y,obj_ant))) && (!taken)
{
	taken = true;
	ds_list_add(obj_ant.inventory)
}