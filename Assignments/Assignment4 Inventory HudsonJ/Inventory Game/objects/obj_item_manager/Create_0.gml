/// @description Insert description here
// You can write your code in this editor

depth = -99999;
visible = false
is_visible = false

//item constructor
function create_item(_name,_desc,_spr,_can_drop,_price, _effect) constructor
{
	name = _name
	description = _desc
	sprite = _spr
	can_drop = _can_drop
	price_gold = _price
	effect = _effect
}


global.item_list = 
{

//create items

apple : new create_item(
	"Apple",
	"It's an Apple! 5g",
	spr_apple,
	true,
	5,
	function()
		{
		obj_hero.hp += 5;
		
		//get rid of item
		array_delete(inv, selected_item, 1);
		}
	),
	
turnip : new create_item(
	"Turnip",
	"It's a Turnip! 3g",
	spr_turnip,
	true,
	3,
	function()
	{
	}
	),
	
	
cherry : new create_item(
	"Cherry",
	"It's a Cherry! 7g",
	spr_cherry,
	true,
	7,
	function()
	{
	}
	),
}

// create the inventory
inv = array_create(0);
	
inv_max = 5;
selected_item = -1	;
	
// for drawing and mouse pos
sep = 32;
screen_bord = 16;