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
	ticket : new create_item(
		"Boat Ticket",
		"A ride back home!",
		spr_ticket,
		400
			
	)
}

//create inventory
inventory = array_create(0);
selected_item = -1;

//drawing and mouse position
sep = 77;

array_push(inventory, global.key_list.ticket);



