#macro INVENTORY_SLOTS 24
inventory = array_create(INVENTORY_SLOTS,-1);
rowLength = 6;
array_set(inventory,0,new Pistol());
array_set(inventory,1,new Uzi());