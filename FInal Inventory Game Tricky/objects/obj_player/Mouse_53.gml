
if (mouse_check_button_pressed(mb_left))
{
    for (var i = 0; i < ds_list_size(contacted_objects); i++)
    {
        var sprite = ds_list_find_value(contacted_objects, i); // 直接获取sprite_index
        var posX = startX + (i % 5) * (iconSize + padding);
        var posY = startY + (floor(i / 5)) * (iconSize + padding);
        
        // 检测鼠标是否在sprite的范围内
        if (point_in_rectangle(mouse_x, mouse_y, posX, posY, posX + iconSize, posY + iconSize))
        {
            dragging = true;
            dragged_sprite = sprite; // 保存被拖动的sprite_index
            dragged_index = i; // 保存被拖动的sprite在列表中的位置
            break;
        }
    }
}

// 鼠标释放时停止拖动
if (mouse_check_button_released(mb_left))
{
    dragging = false;
}

// 绘制被拖动的sprite
if (dragging && dragged_sprite != -1)
{
    draw_sprite(dragged_sprite, 0, mouse_x - iconSize / 2, mouse_y - iconSize / 2);
}








