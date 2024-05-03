for (var i = 0; i < ds_list_size(itemList); i++) {
    var item = ds_list_find_value(itemList, i);
    ds_map_destroy(item);
}
ds_list_destroy(itemList);