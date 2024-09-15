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


    milk : new create_item(
        "Milk",
        "stolen from a cow",
        spr_milk,

        function ()
        {
            array_delete(inv, selected_item, 1);
        }

        ),

    egg : new create_item(
        "Egg",
        "stolen from a chicken",
        spr_egg,
        function ()
        {
            array_delete(inv, selected_item, 1);
        }

        ),

    berry : new create_item(
        "Berry",
        "plucked from wild bushes",
        spr_berry,
        function ()
        {
            array_delete(inv, selected_item, 1);
        }
        ),

    apple : new create_item(
        "Apple",
        "the apple that fell on Newton's head ",
        spr_apple,
        function ()
        {
            array_delete(inv, selected_item, 1);
        }

        ),

    wheat : new create_item(
        "Wheat",
        "a stick used to make bread",
        spr_wheat,
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
