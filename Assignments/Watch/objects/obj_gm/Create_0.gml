enum GameState{
	Inventory,
	Walk,
	Attack
}

gamestate = GameState.Walk;

//inventory val
rowlength = 4;
collength = 2;

//the inventory linked list
inventory = LinkedList();


//inventory.add(inventory.size(), Item(spr_watchB));
//inventory.add(inventory.size(), Item(spr_watchA));

draggingIndex = -1;
droppingIndex = -1;
draggingSprite = noone;

