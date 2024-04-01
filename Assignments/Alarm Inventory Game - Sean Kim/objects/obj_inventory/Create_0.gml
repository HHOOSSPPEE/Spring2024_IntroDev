//CREATE - obj_Inventory
#macro INVENTORY_SLOTS 15

//inventory = array_create(INVENTORY_SLOTS,-1);
inventory = ds_map_create();
inventoryList = [];
isVisible = true;  // Controls the visibility of the inventory UI.
