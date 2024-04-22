var g_width = display_get_gui_width();
var g_height = display_get_gui_height();

// shadow
draw_set(c_black, 0.2);
draw_rectangle(
	ui_padding_x + ui_border_size,
	ui_padding_y + ui_border_size,
	(g_width - ui_padding_x) + ui_border_size,
	(g_height - ui_padding_y) + ui_border_size,
	false
);

// full rectangle
draw_set(color_border, 1);
draw_rectangle(
	ui_padding_x,
	ui_padding_y,
	(g_width-ui_padding_x),
	(g_height - ui_padding_y),
	false
);

// inner rectangle
draw_set(color_background, 1);
draw_rectangle(
	ui_padding_x + ui_border_size,
	ui_padding_y + ui_border_size,
	(g_width-ui_padding_x) - ui_border_size,
	(g_height - ui_padding_y) - ui_border_size,
	false
);

// horizongtal line
draw_set(color_border, 1);
draw_rectangle(
	ui_padding_x + ui_panel_left,
	ui_padding_y + ui_border_size,
	ui_padding_x + ui_panel_left + ui_border_size,
	g_height - ui_padding_y - ui_border_size,
	false
);

// font setup
draw_set_font(fn_Montserrat);
text_align(fa_left, fa_top);

// text
draw_set(c_black, 0.5);
draw_text(
	ui_padding_x + (ui_border_size * 3) + 2,
	ui_padding_y + (ui_border_size * 4) + 2,
	"Right Click to Sell"
);
draw_text(
	ui_padding_x + (ui_border_size * 3) + 2,
	ui_padding_y + (ui_border_size * 6) + 10,
	"Coins: " + string(global.coin_count)
);

/*draw_set(c_silver, 1);
draw_text(
	ui_padding_x + (ui_border_size * 3),
	ui_padding_y + (ui_border_size * 4),
	"Details"
);*/


draw_set(c_black, 0.5);
draw_text(
	ui_padding_x + ui_panel_left + ui_border_size + ui_inventory_margin + 2,
	ui_padding_y + (ui_border_size * 4) + 2,
	"Inventory"
);

/*draw_set(c_silver, 1);
draw_text(
	ui_padding_x + ui_panel_left + ui_border_size + ui_inventory_margin,
	ui_padding_y + (ui_border_size * 4),
	"Inventory"
);*/

// inventory items
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

draw_set(c_white, 1);
var inventory_items = inventory.item_get();
for (var row = 0; row < inventory_rows; row++){
	var pos_y = ui_padding_y + ui_padding_y + (ui_border_size * 13) + (row * (ui_inventory_margin + ui_inventory_box));
	for (var column = 0; column < inventory_columns; column++) {
		var pos_x = ui_padding_x + ui_panel_left + ui_border_size + ui_inventory_padding + (column * (ui_inventory_margin + ui_inventory_box));
		
		draw_sprite_ext(
			spr_Inventory_Box,
			0,
			pos_x,
			pos_y,
			1, 1, 0, c_white, 1);
		
		var inventory_index = (row * inventory_columns) + column;
		if (inventory_index <= array_length(inventory_items) - 1) {
			draw_sprite(inventory_items[inventory_index].sprite, 0, pos_x + 8, pos_y + 8);
		}
		
		// hover
		if(is_between(mx, pos_x, pos_x + ui_inventory_box)) {
			if(is_between(my, pos_y, pos_y + ui_inventory_box)) {
				draw_set(color_inventory_highlight, 0.3);
				draw_rectangle(
					pos_x,
					pos_y,
					pos_x + ui_inventory_box,
					pos_y + ui_inventory_box,
					false
				);
				
				draw_reset();
			}
		}
		
		// quantity check
		if(inventory_index <= array_length(inventory_items) - 1) {
			draw_set(#FCFFE5, 1);
			draw_circle(
				pos_x + ui_inventory_box - 5,
				pos_y + ui_inventory_box - 5,
				6,
				false
			);
			
			draw_set(#C7DF85, 1);
			text_align(fa_center, fa_middle);
			//draw_set_font(-1);
			
			draw_text(
				pos_x + ui_inventory_box - 3,
				pos_y + ui_inventory_box - 3,
				inventory_items[inventory_index].quantity
				);
		}
	}
}