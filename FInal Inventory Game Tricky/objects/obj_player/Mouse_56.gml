if (dragging)
{
    var released = false;  // 标志物品是否已放置

    // 检测是否在背包内放置
    for (var i = 0; i < ds_list_size(contacted_objects); i++)
    {
        var posX = startX + (i % 5) * (iconSize + padding);
        var posY = startY + (floor(i / 5)) * (iconSize + padding);

        if (point_in_rectangle(mouse_x, mouse_y, posX, posY, posX + iconSize, posY + iconSize))
        {
            if (i != dragged_index)  // 如果不是原位置
            {
                var temp_sprite = ds_list_find_value(contacted_objects, i);
                ds_list_replace(contacted_objects, i, ds_list_find_value(contacted_objects, dragged_index));
                ds_list_replace(contacted_objects, dragged_index, temp_sprite);
                released = true;
                break;
            }
        }
    }

    // 如果物体没有在背包内放置，则检测是否与任一obj_button的位置相符
    var buttons = [obj_button1, obj_button2, obj_button3,obj_button4,obj_button5]; // 将所有的按钮对象放入数组
    for (var btn_index = 0; btn_index < array_length_1d(buttons); btn_index++)
    {
        var button = buttons[btn_index];
        if (instance_exists(button)&&!released && point_in_rectangle(mouse_x, mouse_y, button.x - button.sprite_width/2, button.y - button.sprite_height/2, button.x + button.sprite_width/2, button.y + button.sprite_height/2))
        {
            // 确定要创建的对象类型
            var sprite_to_create = ds_list_find_value(contacted_objects, dragged_index);
            var object_to_create = GetGameObjectFromSprite(sprite_to_create); // 假设这个函数可以根据sprite_index返回正确的对象类型

            if (object_to_create != undefined && !button.found)
            {
                // 在按钮的位置上创建新的对象实例
                instance_create_depth(button.x, button.y, 0, object_to_create);

                // 从背包列表中移除
                ds_list_delete(contacted_objects, dragged_index);

                released = true;
                break; // 一旦在某个按钮范围内放置了物体，就不再检查其他按钮
            }
        }
    }

    // 重置拖动状态
    dragging = false;
    dragged_sprite = -1;
    dragged_index = -1;
}

