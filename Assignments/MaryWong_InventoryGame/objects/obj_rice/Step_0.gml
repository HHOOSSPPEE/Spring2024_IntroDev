if (place_meeting(x,y, obj_player))
{
	InventoryAdd(id, 0);
	instance_destroy(id);
}