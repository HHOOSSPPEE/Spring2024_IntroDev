

//// Draw GUI Event
//var uiStartX = 10; // UI元素距离视图边缘的起始x坐标
//var uiStartY = 10; // UI元素距离视图边缘的起始y坐标
//var iconSize = 32; // 假设每个精灵图标大小为32像素
//var padding = 40;  // 图标之间的间距为40像素


// var backpackPos = 0; // 假设书包始终在列表的第一个位置
//    var spriteBackpack = ds_list_find_value(contacted_objects, backpackPos);
//    draw_sprite(spriteBackpack, 0, uiStartX, uiStartY);

//// 遍历contacted_objects ds_list
//for (var i = 0; i < ds_list_size(contacted_objects); i++) {
//    var sprite = ds_list_find_value(contacted_objects, i);
//    var posX = uiStartX + (i % 5) * (iconSize + padding); // 横向位置
//    var posY = uiStartY + (floor(i / 5)) * (iconSize + padding); // 纵向位置
//    if(inventory){
//    draw_sprite(sprite, 0, posX, posY);
//	}
//}
   

//// 检测鼠标点击
//if (mouse_check_button_pressed(mb_left)) {
//    for (var i = 0; i < ds_list_size(contacted_objects); i++) {
//        var sprite = ds_list_find_value(contacted_objects, i);
//        var posX = uiStartX + (i % 5) * (iconSize + padding);
//        var posY = uiStartY + (floor(i / 5)) * (iconSize + padding);
//        var width = sprite_get_width(sprite);
//        var height = sprite_get_height(sprite);

//        // 检测鼠标是否在sprite的屏幕范围内
//        if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), posX, posY, posX + width, posY + height)) {
//            switch (sprite) {
//                case spr_BackPack1:
//                    show_debug_message(inventory);
//                    inventory=!inventory; // 切换显示状态
//                    break;
//                case spr_spellBook:
//                    craftJump = true;
//                    break;
//                case spr_dashbook:
//                    craftDash = true;
//                    break;
//                case spr_spell:
//                    jumpSpell = true;
//                    ds_list_delete(contacted_objects, i); // 删除点击的对象
//                    break;
//                case spr_dashSpell:
//                    ds_list_delete(contacted_objects, i); // 删除点击的对象
//                    break;
//            }
//        }
//    }
//}





var bar_width = 200; 
var bar_height = 20; 


draw_set_color(c_black);
draw_rectangle(1150, 20, 1150 + bar_width, 20 + bar_height, false);

var current_width = (global.value /global.max_value) * bar_width;


draw_set_color(c_red);
draw_rectangle(1150, 20,1150 + current_width,20 + bar_height, false);




var shieldIconWidth = sprite_get_width(spr_shield);  // 获取spr_shield精灵的宽度
var shieldIconHeight = sprite_get_height(spr_shield); // 获取spr_shield精灵的高度
var shieldSpacing = 4;  // 设定每个图标之间的间隔
var shieldStartX = shieldSpacing;  // 设置图标起始X坐标为一定的间隔值
var shieldY = shieldSpacing;  // 设置图标起始Y坐标为一定的间隔值

// 遍历绘制每一个图标
for (var i = 0; i < global.shield; i++) {
    var shieldX = shieldStartX + i * (shieldIconWidth + shieldSpacing);  // 计算当前图标的X坐标
    draw_sprite(spr_shield, 0, shieldX, shieldY);  // 绘制图标
}

