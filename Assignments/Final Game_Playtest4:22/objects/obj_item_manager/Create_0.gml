//variables
depth = -999;
visible = true;

//item constructor
function create_item(_name, _desc, _spr, _drop, _eff) constructor
{
	name = _name;
	description = _desc;
	sprite = _spr;
	drop = _drop;
	effect = _eff;
}

//create the items - structs
global.item_list = 
{
	Antidote : new create_item(
		"Antidote",
		"Removes poisoned state. Restores speed.",
		spr_antidote,
		true,
		
		function()
		{
			obj_player.poisoned = false;
			obj_player.spd = 5;	
			array_delete(inv, selected_item, 1);
		}
		),
	
	Cake : new create_item(
		"Cake",
		"Recovers HP by 1.",
		spr_cake,
		true,
		
		function()
		{
			obj_player.hp += 1;
			array_delete(inv, selected_item, 1);
		}
		),
		
	Cheesecake : new create_item(
		"Cheesecake",
		"Recovers HP by 2.",
		spr_cheesecake,
		true,
		
		function()
		{
			obj_player.hp += 1;
			array_delete(inv, selected_item, 1);
		}
		),
		
	Cupcake : new create_item(
		"Cupcake",
		"Ghosts with hat HP -1.",
		spr_cupcake,
		true,
		
		function()
		{
			obj_hat_ghost.hp -= 1;
			array_delete(inv, selected_item, 1);
		}
		),
		
	Ice_Pop : new create_item(
		"Ice Pop",
		"Greatly slows down all ghosts.",
		spr_ice_pop,
		true,
		
		function()
		{
			if instance_exists(obj_ghost)
			{
				obj_ghost.spd -= 2;
			}
			if instance_exists(obj_hat_ghost)
			{
				obj_hat_ghost.spd -= 2;
			}
			array_delete(inv, selected_item, 1);
		}
		),
		
	Magic_Potion : new create_item(
		"Magic Potion",
		"Speeds up yourself.",
		spr_magic_potion,
		true,
		
		function()
		{
			obj_player.spd += 1;
			array_delete(inv, selected_item, 1);
		}
		),
		
	 Net : new create_item(
		"Net",
		"A magic net for catching ghosts. Unlimited use. Click to equip.",
		spr_net,
		false,
		
		function()
		{
			//equip
			obj_player.net_equipped = true;
			array_delete(inv, selected_item, 1);
		}
		),
}

//create the inventory
inv = array_create(0);
inv_max = 5;
selected_item = -1;
	
//for drawing and mouse positions
sep = 32; //separation
screen_border_x = camera_get_view_x(view_camera[0])+32;
screen_border_y = camera_get_view_y(view_camera[0])+32;