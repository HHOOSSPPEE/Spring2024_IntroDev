// Mouse Left Button event of the interactable object

// Define the maximum distance at which interaction is allowed
var interactionDistance = 200; // Adjust this value as needed

// Get the player's position
var playerX = obj_player.x;
var playerY = obj_player.y;

// Calculate the distance between this object and the player
var distance = point_distance(x, y, playerX, playerY);

// Check if the player is within the interaction distance
if (distance <= interactionDistance) {
    InventoryAdd(obj_inventory.id, itemType);
	array_push(obj_inventory.inventoryList, itemType);
}
