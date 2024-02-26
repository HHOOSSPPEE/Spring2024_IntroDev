var x_offset = 16; 
var y_offset = 32;

draw_text(x, y, "Inventory Items:");

for (var i = 0; i < ds_list_size(inventory); i++) {
	var item_name = ds_list_find_value(inventory, i);
	draw_text(x + x_offset, y + y_offset, item_name);
	y_offset += 20;
}

draw_set_color(c_yellow);
