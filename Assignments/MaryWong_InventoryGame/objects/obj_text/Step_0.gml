item = obj_inventory.itemWanted;

if (item = 0) itemName = "a grain of rice.";
if (item = 1) itemName = "a pair of lips."
if (item = 2) itemName = "light blue."
if (item = 3) itemName = "yellow."
if (item = 4) itemName = "light green."
if (item = 5) itemName = "purple."
if (item = 6) itemName = "dark blue."
if (item = 7) itemName = "red."
if (item = 8) itemName = "dark green."
if (item = 9) itemName = "grey."

text = ("Give me " + string(itemName));

if (obj_inventory.gameOver) 
{
	text = "You lose! Press R to Restart";
}