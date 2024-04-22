//input
var keyD = keyboard_check(ord("D"));
var keyA = keyboard_check(ord("A"));
var keyW = keyboard_check(ord("W"));
var keyS = keyboard_check(ord("S"));
var keyInteract = keyboard_check_pressed(vk_space);
var keyInventory = keyboard_check_pressed(ord("E"));

//moving
if (can_move)
{
	if (keyA && place_meeting(x - 15, y, ts_Ground)) x -= player_speed;
	if (keyD && place_meeting(x + 15, y, ts_Ground)) x += player_speed;
	if (keyW && place_meeting(x, y - 10, ts_Ground)) y -= player_speed;
	if (keyS && place_meeting(x, y + 20, ts_Ground)) y += player_speed;
}

//animations
if (keyW) sprite_index = spr_player_walk_back;
else if (keyboard_check_released(ord("W"))) sprite_index = spr_player_idle_back;
if (keyS) sprite_index = spr_player_walk_front;
else if (keyboard_check_released(ord("S"))) sprite_index = spr_player_idle_front;
if (keyD) sprite_index = spr_player_walk_right;
else if (keyboard_check_released(ord("D"))) sprite_index = spr_player_idle_right;
if (keyA) sprite_index = spr_player_walk_left;
else if (keyboard_check_released(ord("A"))) sprite_index = spr_player_idle_left;


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
	isSell = true;
}
else if (!inventory_open) 
{
	instance_destroy(obj_inventory_sell);
	isSell = false;
}


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
