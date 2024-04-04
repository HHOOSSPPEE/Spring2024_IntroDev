#macro INVENTORY_SLOTS 64

rowLength = 8;
margin = 6;
slotSeparation = 6;

invWidth = (margin*2) + rowLength * (sprite_get_width(spr_slot) + slotSeparation);
invHeight = (margin*2) + (((INVENTORY_SLOTS - 1) div rowLength) + 1) * (sprite_get_height(spr_slot) + slotSeparation);

scrolling_y = 0;
scrollingSpeed = 10;

inventory = array_create(INVENTORY_SLOTS, -1);

itemCount = 10;
correctItem = false;
itemWanted = irandom(itemCount-1);
gameOver = false;