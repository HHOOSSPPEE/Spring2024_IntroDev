//draw nothing just to overide

// In the Draw event
for (var i = 0; i < ds_list_size(itemList); i++) {
    var item = ds_list_find_value(itemList, i);
    var sprite = ds_map_find_value(item, "sprite");
    var pos_x = ds_map_find_value(item, "pos_x");
    var pos_y = ds_map_find_value(item, "pos_y");
    draw_sprite(sprite, 0, pos_x, pos_y);
}

