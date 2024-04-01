draw_set_color(c_gray); // Set the color for the slot background

if (isVisible) {
    var startX = 10;
    var startY = 10;
    var slotWidth = 64;
    var slotHeight = 64;
    var padding = 10;
    var currentX = startX;
    var currentY = startY;
    var key = ds_map_find_first(inventory);

    // Iterate through the map using ds_map_find_first and ds_map_find_next
    while (key != undefined) {
        var value = ds_map_find_value(inventory, key);

        // Draw the inventory slot background
        draw_rectangle(currentX, currentY, currentX + slotWidth, currentY + slotHeight, false);

        // Display the item sprite and quantity
        if (sprite_exists(asset_get_index(key))) {
            draw_sprite(asset_get_index(key), 0, currentX + slotWidth/2, currentY + slotHeight/2);
            draw_text(currentX + 5, currentY + slotHeight - 20, string(value));
        }

        // Update the position for the next slot
        currentX += slotWidth + padding;
        if (currentX + slotWidth > room_width) {
            currentX = startX;
            currentY += slotHeight + padding;
        }

        // Move to the next key in the map
        key = ds_map_find_next(inventory, key);
    }
}
