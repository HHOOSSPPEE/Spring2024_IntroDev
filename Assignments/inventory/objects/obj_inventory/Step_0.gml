timer = timer + 1


if keyboard_check_pressed(ord("E")) && (inventoryOpen = false)
{
	inventoryOpen = true;
	timer = 0;
}

if keyboard_check_pressed(ord("E")) && (timer > 10)
{
	inventoryOpen = false;
}