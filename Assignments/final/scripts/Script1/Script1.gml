
function InventorySearch(rootObject, itemType){
    // Check if the item exists in the inventory
    if (ds_map_exists(rootObject.inventory, itemType))
    {
        return ds_map_find_value(rootObject.inventory, itemType);
    }
    else
    {
        // Return 0 if the item does not exist
        return 0;
    }
}
/*
function InventorySearch(rootObject, itemType)
{
    show_debug_message("Entered InventorySearch with itemType: " + itemType);
    if (rootObject == undefined) {
        show_debug_message("rootObject is undefined");
        return 0;
    }
    if (rootObject.inventory == undefined) {
        show_debug_message("rootObject.inventory is undefined");
        return 0;
    }
    // Proceed with the rest of the function...
}*/




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

function drawBar(x, y, width, height, ratio, color) {
    var barX = x;
    var barY = y;
    var barWidth = width;
    var barHeight = height;
    var fillRatio = min(ratio, 1); // This should be a value between 0 and 1
    var fillColor = color;
    
    // Draw the background bar
    draw_set_color(c_gray);
    draw_rectangle(barX, barY, barX + barWidth, barY + barHeight, false);
    
    // Draw the foreground bar based on the ratio
    draw_set_color(fillColor);
    draw_rectangle(barX, barY, barX + barWidth * fillRatio, barY + barHeight, false);
}



global.word1 = "";
global.word2 = "";
global.word3 = "";
global.word4 = "";
global.word5 = "";
	
global.Potion_1 = 0;	
global.Potion_2 = 0;
global.Potion_3 = 0;
global.Potion_4 = 0;
global.Potion_5 = 0;

global.head = [spr_head1, spr_head2, spr_head3, spr_head4, spr_head5]
global.eye = [spr_eye0, spr_eye1, spr_eye2, spr_eye4]
global.body = [spr_body0, spr_body1, spr_body2, spr_body3, spr_body4, spr_body5]
global.pant = [spr_pants0, spr_pants1, spr_pants2, spr_pants3, spr_pants4, spr_pants5]

global.head_choice = 0;
global.eye_choice = 0;
global.body_choice = 0;
global.pant_choice = 0;
global.character_Master_array = []

