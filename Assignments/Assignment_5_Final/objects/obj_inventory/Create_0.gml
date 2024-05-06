depth = -9999;
//item constructor
function create_item(_name, _desc, _spr, _price, _categ) constructor
{
	name = _name;
	description = _desc;
	sprite = _spr;
	price = _price;
	category = _categ;
}


//create items
global.item_list = 
{
	apple : new create_item(
		"Apple",
		"A tasty red apple!",
		spr_apple,
		3,
		"healthy"
	),

	banana : new create_item(
		"Banana",
		"An appea ling banana!",
		spr_banana,
		5,
		"healthy"
	),

	orange : new create_item(
		"Orange",
		"An orange orange",
		spr_orange,
		4,
		"healthy"
	),
	
	cake : new create_item(
		"Cake",
		"A yummy cake. Yum!",
		spr_cake,
		10,
		"sweet"
	),
	
	macarons : new create_item(
		"Macarons",
		"Wow! Macarons!",
		spr_macarons,
		8,
		"sweet"
	),
	
	tiramisu : new create_item(
		"Tiramisu",
		"Fancy Tiramisu",
		spr_tiramisu,
		9,
		"sweet"
	),
	
	pizza : new create_item(
		"Pizza",
		"Cheeeeesy Pizza",
		spr_pizza,
		15,
		"fat"
	),
	
	burger : new create_item(
		"Burger",
		"Burger KING!",
		spr_burger,
		13,
		"fat"
	),
	
	fries : new create_item(
		"Fries",
		"Unfrenched Fries",
		spr_fries,
		10,
		"fat"
	),
	
	hotdog : new create_item(
		"Hotdog",
		"A hot dog",
		spr_hotdog,
		12,
		"fat"
	),
	
	soda : new create_item(
		"Soda",
		"Sprite? Pepsi?",
		spr_soda,
		9,
		"fat"
	),
}

//create inventory
inventory = array_create(0);
inventory_max = 6;
selected_item = -1;

//drawing and mouse position
sep = 115;
