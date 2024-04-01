// Create Event of obj_player
contacted_objects = ds_list_create(); // 初始化列表
move_speed=5



show=false;


dragging = false;  // 是否正在拖动
dragged_sprite = -1;  // 正在拖动的sprite
dragged_index = -1;  // 正在拖动的sprite在清单中的位置

 iconSize = 32; // Sprite的大小
 padding = 40; // Sprite之间的间距
 startX = 10; // 清单开始的X坐标
 startY = 10; // 清单开始的Y坐标
release_index=-1;

obj_4_added=false;



global.obj_4_created = false;
global.obj_5_created = false;


// 确保sprite_obj_4是有效的精灵索引
sprite_obj_4 = spr_4; // 这里假设你已经有一个变量或者常量定义了obj_4的精灵
