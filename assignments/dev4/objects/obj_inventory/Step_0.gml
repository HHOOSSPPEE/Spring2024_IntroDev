/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_released(ord("Q")))
{
	is_show_inventory = !is_show_inventory;
}
if(is_show_inventory == false)
{
	_inventory.deselect();
}

//identifying mouse
if(is_show_inventory == true)
{
	if(mouse_check_button_released(mb_any))
	{
		var mx = device_mouse_x_to_gui(0);
		var my = device_mouse_y_to_gui(0);
	}
	var width_half = display_get_gui_width()/2;
	var item_num_half = _inventory.max_item/2;
	var sprite_width_padding = 86 + 64;
	
	var column_start = width_half - (sprite_width_padding*floor(item_num_half));
	var colmn_stop = width_half + (sprite_width_padding*floor(item_num_half));
	
	var items = _inventory.getAll();
	for(var i=0; i<array_length(items); i++)
	{
		if(mx > column_start + (i*sprite_width_padding)-24){
				if(mx < column_start + (i*sprite_width_padding)+24){
					if(items[i].hover ==true)
					{
						instance_create_depth(mouse_x,mouse_y,depth-1,obj_spawn)
						_inventory.remove(i);
					}
					else{
						_inventory.select(i);
					}
				}
		}
	}
}