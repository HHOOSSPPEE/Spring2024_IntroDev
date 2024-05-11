depth = -9999;

invOpen = false;

//item constructor
function create_item(_name, _desc, _icon, _drop) constructor
    {
    name = _name;
    description = _desc;
    icon = _icon;
    drop = _drop;
    }


//create items
global.item_list = 
    {


    key : new create_item(
        "Key",
        "Knowledge is the key?",
        spr_key,

        function ()
        {
            array_delete(inv, selected_item, 1);
        }

        ),

    milk : new create_item(
        "Milk",
        "A bottle of milk",
        spr_milk,
        function ()
        {
            array_delete(inv, selected_item, 1);
        }

        ),

    ring : new create_item(
        "Ring",
        "Who's ring is this?",
        spr_ring,
        function ()
        {
            array_delete(inv, selected_item, 1);
        }
        ),

    }


//create inventory
inv = array_create(0);

inv_max = 15;

showInventory = false;
selected_item = -1;
//get selected item
selected_item = -1;

sep = 35;
screen_x = 700;
screen_y = 10