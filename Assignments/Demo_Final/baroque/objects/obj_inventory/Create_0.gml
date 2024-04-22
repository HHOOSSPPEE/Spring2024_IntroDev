//randomize();
inventory_open = false;
inventory = new Inventory();

//inventory.item_add("Apple", 5, spr_apple);
//inventory.item_add("Plum", 2, spr_plum);
//inventory.item_add("Berries", 10, spr_berries);

show_debug_message(inventory);

/*inventory.item_subtract("Wood", 2);
inventory.item_subtract("Stone", 10);

show_debug_message(inventory);*/

// UI Info //

display_set_gui_size(640, 360);

inventory_columns = 9;
inventory_rows = 5;

ui_padding_x = 32;
ui_padding_y = 32;
ui_panel_left = 160;
ui_border_size = 4;
ui_inventory_padding = 24;
ui_inventory_box = 32;
ui_inventory_margin = 8;

color_border = #C7DF85;
color_background = #E9FFB2;
color_inventory_highlight = c_white;