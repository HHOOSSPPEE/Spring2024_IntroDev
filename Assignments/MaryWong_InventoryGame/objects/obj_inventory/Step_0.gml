if (keyboard_check(ord("R")))
{
	game_restart();
}

if (inventory[0] == itemWanted)
{
	correctItem = true;
}

if (correctItem)
{
	inventory[0] = -1;
	itemWanted = irandom(itemCount-1);
	correctItem = false;
}

if (!gameOver) RandomAddItem();

if (inventory[INVENTORY_SLOTS - 1] != -1) gameOver = true;

show_debug_message(itemWanted)
//show_debug_message(correctItem)
//show_debug_message(inventory[1])