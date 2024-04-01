
draw_self()


if(show){

var sprite;

// 遍历contacted_objects ds_list
 for (var i = 0; i < ds_list_size(contacted_objects); i++) {
        sprite = ds_list_find_value(contacted_objects, i); // 直接获取sprite_index

        var posX = startX + (i % 5) * (iconSize + padding); // 横向位置
        var posY = startY + (floor(i / 5)) * (iconSize + padding); // 纵向位置
        draw_sprite(sprite, 0, posX, posY); // 绘制sprite
    }
}

// 绘制拖动中的sprite
if (dragging && dragged_sprite != -1)
{
    draw_sprite(dragged_sprite, 0, mouse_x - iconSize/2, mouse_y - iconSize/2);
}

