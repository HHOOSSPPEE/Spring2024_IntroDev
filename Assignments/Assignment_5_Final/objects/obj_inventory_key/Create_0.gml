depth = -9999;
//item constructor
function create_item(_name, _desc, _spr, _price) constructor
{
	name = _name;
	description = _desc;
	sprite = _spr;
	price = _price;
}


//create items
global.key_list = 
{
	yellow : new create_item(
		"Yellow Key",
		"A key the unknown!",
		spr_key_yellow,
		100
			
	),

	blue : new create_item(
		"Blue Key",
		"A key to a new farmer??",
		spr_key_blue,
		200
	),
	
	red : new create_item(
		"Red Key",
		"A key to America I guess",
		spr_key_red,
		320
	),
}

//create inventory
inventory = array_create(0);
key_inventory = array_create(0);
selected_item = -1;

//drawing and mouse position
sep = 77;

array_push(inventory, global.key_list.yellow);
array_push(inventory, global.key_list.blue);
array_push(inventory, global.key_list.red);



