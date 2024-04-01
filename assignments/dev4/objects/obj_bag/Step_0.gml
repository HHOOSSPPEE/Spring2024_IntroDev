/// @description Insert description here
// You can write your code in this editor


if(device_mouse_check_button_pressed(0,mb_left))
{
	var invent = obj_inventory;
}

var allItems = inventory.getAll(); 


var inventoryContents = "Inventory:\n";


for (var i = 0; i < array_length(allItems); i++) {
    inventoryContents += "- " + allItems[i].name + "\n";
}


show_message(inventoryContents);
