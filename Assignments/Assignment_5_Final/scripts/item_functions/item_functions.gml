//picking items
function item_add(_item)
{
	if (array_length(obj_inventory.inventory) < obj_inventory.inventory_max)
	{	
	array_push(obj_inventory.inventory, _item);
	}
}