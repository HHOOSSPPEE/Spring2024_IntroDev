depth = -9999;

global.font = font_add(Font1,12,false,false,32,128)

//item constructor
function create_item(_name, _desc, _spr,_effect) constructor
	{
		name = _name;
		description = _desc;
		sprite = _spr;
		effect = _effect;
	}

//create the items
global.item_list =
{

	gun : new create_item( 
	"Gun",
	"It's a Gun, it shoots.",
	spr_gun,
	
	function()
		{
			global.hasgun = true;
		}
	),
	
	shield : new create_item(
	"Keycard",
	"Unlocks doors",
	spr_key,
	function()
		{
			
		}
	),
}

//creates the inventory
inv = array_create(0);

selected_item = -1;

//for drawing and mouse positions
sep = 16;
screen_bord_x = camera_get_view_x(view_camera[0]) + 16;
screen_bord_y = camera_get_view_y(view_camera[0]) + 16;
	
	