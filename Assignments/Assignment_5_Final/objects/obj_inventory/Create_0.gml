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
global.item_list = 
{
	apple : new create_item(
		"Apple",
		"A tasty red apple!",
		spr_apple,
		$3
	),

	banana : new create_item(
		"Banana",
		"An appea ling banana!",
		spr_banana,
		$5
	),

	orange : new create_item(
		"Orange",
		"An orange orange",
		spr_orange,
		$4
	),
	
	cake : new create_item(
		"Cake",
		"A yummy cake. Yum!",
		spr_cake,
		$10
	),
	
	macarons : new create_item(
		"Macarons",
		"Wow! Macarons!",
		spr_macarons,
		$8
	),
	
	tiramisu : new create_item(
		"Tiramisu",
		"Fancy Tiramisu",
		spr_tiramisu,
		$9
	)
}

//create inventory
inventory = array_create(0);
inventory_max = 6;
selected_item = -1;

//drawing and mouse position
sep = 115;

