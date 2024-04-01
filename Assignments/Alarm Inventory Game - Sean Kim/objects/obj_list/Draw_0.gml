draw_set_color(c_black);

// In the Create event of obj_list
startX = x;
startY = y;

draw_text(x, y - 40, "Order: ")

for (var i = 0; i < array_length_1d(global.burger); i++) {
    // Calculate the Y position for this item
    var yPos = startY + (i * 40); // 20 pixels space between items

    // Draw the item text at the calculated position
    draw_text(startX, yPos, global.burger[i]);
}