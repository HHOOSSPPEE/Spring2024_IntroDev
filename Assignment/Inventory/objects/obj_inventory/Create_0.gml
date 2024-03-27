#macro INVENTORY_SLOTS 24
inventory = array_create(INVENTORY_SLOTS,-1);
rowLength = 8;
array_set(inventory,0,new Sword());
array_set(inventory,1,new Bow());