#macro INVENTORY_SLOTS 24
inventory = array_create (INVENTORY_SLOTS, -1);
rowLength = 6;
inventory[0] = 0;
inventory[1] = 0;
inventory[2] = 1;

inventoryOpen = false;

timer = 0;