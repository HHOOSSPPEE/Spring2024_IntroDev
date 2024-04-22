//pickup items
function item_add(_item)
{
	var _added = false;
	
	if array_length(obj_item_manager.inv) < obj_item_manager.inv_max
	{
		array_push(obj_item_manager.inv, _item);
		_added = true;
	}
	return _added;
}

//inventory swap
function inventory_swap(slot_from, slot_to)
{
	var _item_from = inv[slot_from];
	inv[slot_from] = inv[slot_to];
	inv[slot_to] = _item_from;
}