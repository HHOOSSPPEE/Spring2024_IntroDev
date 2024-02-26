
if(global.item_collected && real_item) { 
	ds_list_add(inventory, "Key");
	real_item = false;
}
if(global.fake_item_collected1 && fake_item1) { 
	ds_list_add(inventory, "Stick");
	fake_item1 = false;
}
if(global.fake_item_collected2 && fake_item2) { 
	ds_list_add(inventory, "Stones");
	fake_item2 = false;
}
if(global.fake_item_collected3 && fake_item3) { 
	ds_list_add(inventory, "Water");
	fake_item3 = false;
}


