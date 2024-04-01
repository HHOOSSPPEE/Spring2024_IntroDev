global.points = 0;

global.burger = ["bun", "patty"]

function InventorySearch(rootObject, itemType)
{
	return ds_map_find_value(rootObject.inventory, itemType);
	
	//return -1;
}

function InventoryRemove(rootObject, itemType)
{
	var amount = InventorySearch(rootObject, itemType);
	if(amount > 0)
	{
		amount--;
		ds_map_set(rootObject.inventory, itemType, amount);
		
	}
	if(amount <= 0)
	{
		//delete item from dictionary
		ds_map_delete(rootObject.inventory, itemType);
	}

}

function InventoryAdd(rootObject, itemType)
{
	var amount = InventorySearch(rootObject, itemType);
	

	if(amount == undefined)
	{
		ds_map_add(rootObject.inventory, itemType, 1);
	}
	else
	{
		amount++;
		ds_map_set(rootObject.inventory, itemType, amount);
	}
		
}



function compare_arrays(array1, array2) {
    // Check if both arrays have the same length
    if (array_length_1d(array1) != array_length_1d(array2)) {
        return false; // Different lengths, so they can't be identical
    }

    // Iterate through array1 and compare values with array2
    for (var i = 0; i < array_length_1d(array1); i++) {
		
		show_debug_message("First: " + array1[i]);
		show_debug_message("Second: " + array2[i]);
		
        if (array1[i] != array2[i]) {
            return false; // Elements differ
        }
    }

    return true; // Arrays are identical
}