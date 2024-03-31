//input
var keyRight = keyboard_check(vk_right);
var keyLeft = keyboard_check(vk_left);
var keyUp = keyboard_check(vk_up);
var keyDown = keyboard_check(vk_down);
var keyInteract = keyboard_check_pressed(vk_space);
var keyInventory = keyboard_check_pressed(ord("E"));

//moving
if (can_move)
{
	if (keyLeft && place_meeting(x - 15, y, ts_Ground)) x -= player_speed;
	if (keyRight && place_meeting(x + 15, y, ts_Ground)) x += player_speed;
	if (keyUp && place_meeting(x, y - 10, ts_Ground)) y -= player_speed;
	if (keyDown && place_meeting(x, y + 20, ts_Ground)) y += player_speed;
}

//animations
if (keyUp) sprite_index = spr_player_walk_back;
else if (keyboard_check_released(vk_up)) sprite_index = spr_player_idle_back;
if (keyDown) sprite_index = spr_player_walk_front;
else if (keyboard_check_released(vk_down)) sprite_index = spr_player_idle_front;
if (keyRight) sprite_index = spr_player_walk_right;
else if (keyboard_check_released(vk_right)) sprite_index = spr_player_idle_right;
if (keyLeft) sprite_index = spr_player_walk_left;
else if (keyboard_check_released(vk_left)) sprite_index = spr_player_idle_left;

//pick up items
if (keyInteract && place_meeting(x, y, obj_food))
{
	var food = instance_place(x, y, obj_food);
	var index = food.image_index;
	instance_destroy(food);
	inventoryAdd(obj_inventory, index);
}

//interacting with people + create speech bubble
var farmer = instance_place(x, y, obj_farmers)
if (place_meeting(x, y, farmer))
{	
	var speech = instance_create_layer(farmer.x + 50, farmer.y + 22, "Instances", obj_speech);
}


//selling inventory
if (place_meeting(x, y, farmer) && keyInteract)
{
	openInventory(obj_inventory_bar);
	instance_create_layer(camX + 15, camY + 51, "Inventory", obj_inventory_sell);
}
else if (!inventory_open) instance_destroy(obj_inventory_sell);

//farmer conditions
if (place_meeting(x, y, obj_farmer_jo))
{
	farmer_jo = true;
}
else if (place_meeting(x, y, obj_farmer_worldwide))
{
	farmer_world = true;
}
else 
{
	farmer_jo = false;
	farmer_world = false;
}

//open inventory
if (keyInventory)
{
	openInventory(obj_inventory_bar);
}

//inventory
function openInventory(inventory_object)
{
	camX = camera_get_view_x(view_camera[0]);
	camY = camera_get_view_y(view_camera[0]);
	
	var black_filter = layer_get_id("Black");
	
	if (!inventory_open)
	{
		inventory_open = true
		obj_inventory.visible = true;
		can_move = false
		instance_create_layer(camX + 15, camY + 80, "Inventory", inventory_object);
		layer_set_visible(black_filter, true);
	}
	else
	{
		instance_destroy(inventory_object);
		inventory_open = false;
		obj_inventory.visible = false;
		can_move = true;
		layer_set_visible(black_filter, false);
	}
}