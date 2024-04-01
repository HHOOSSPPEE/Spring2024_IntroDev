
// W键向上移动
var currentRoomName = room_get_name(room);
//show_debug_message("当前房间: " + currentRoomName);


if (keyboard_check(ord("W")))
{
    y -= move_speed;
	sprite_index = spr_up;
}


else if (keyboard_check(ord("S")))
{
    y += move_speed;
	sprite_index = spr_down;
}


else if (keyboard_check(ord("A")))
{
    x -= move_speed;
	sprite_index = spr_left;
}


else if (keyboard_check(ord("D")))
{
    x += move_speed;
	sprite_index = spr_right;
}
else sprite_index = spr_idle;





if (keyboard_check_pressed(ord("Q"))) // 检查Q键是否被按下
{
    // 对obj_1的处理
    var obj = instance_place(x, y, obj_1);
    if (obj != noone && obj.visible) {
        ds_list_add(contacted_objects, obj.sprite_index); // 存储sprite_index而非实例ID
        with (obj) { instance_destroy(); } // 销毁实例
    }

    // 对obj_2的处理
    obj = instance_place(x, y, obj_2);
    if (obj != noone && obj.visible) {
        ds_list_add(contacted_objects, obj.sprite_index); // 存储sprite_index而非实例ID
        with (obj) { instance_destroy(); } // 销毁实例
    }

    // 对obj_3的处理
    obj = instance_place(x, y, obj_3);
    if (obj != noone && obj.visible) {
        ds_list_add(contacted_objects, obj.sprite_index); // 存储sprite_index而非实例ID
        with (obj) { instance_destroy(); } // 销毁实例
    }

    // 对obj_4的处理
    obj = instance_place(x, y, obj_4);
    if (obj != noone && obj.visible) {
        ds_list_add(contacted_objects, obj.sprite_index); // 存储sprite_index而非实例ID
        with (obj) { instance_destroy(); } // 销毁实例
    }
	
	
	obj = instance_place(x, y, obj_5);
    if (obj != noone && obj.visible) {
        ds_list_add(contacted_objects, obj.sprite_index); // 存储sprite_index而非实例ID
        with (obj) { instance_destroy(); } // 销毁实例
    }
}


if (keyboard_check_pressed(ord("R"))) // 检查R键是否被按下
{
    for (var i = 0; i < ds_list_size(contacted_objects); i++) // 遍历列表
    {
        var obj_id = ds_list_find_value(contacted_objects, i); // 获取元素（对象ID）
        var obj_name = object_get_name(obj_id.object_index); // 获取对象名称
        show_debug_message(obj_name); // 打印信息
    }
}


//making obj4
if (ds_list_size(contacted_objects) >= 3 && !global.obj_4_created && (currentRoomName == "Room3" || currentRoomName == "Room4"))  // 确保列表至少有三个对象
{
    // 通过sprite_index获取对应的对象类型
    var first_obj_type = GetGameObjectFromSprite(ds_list_find_value(contacted_objects, 0));
    var second_obj_type = GetGameObjectFromSprite(ds_list_find_value(contacted_objects, 1));
    var third_obj_type = GetGameObjectFromSprite(ds_list_find_value(contacted_objects, 2));
    
    // 检查这三个对象是否分别是obj1, obj3, obj2
    if (first_obj_type == obj_1 && second_obj_type == obj_3 && third_obj_type == obj_2)
    {
        // 将obj_4的sprite_index添加到contacted_objects列表
        ds_list_add(contacted_objects, spr_4);
        global.obj_4_created = true; // 标记obj_4已创建，防止再次创建
    }
}


//making obj5
if (ds_list_size(contacted_objects) >= 4 && !global.obj_5_created&&currentRoomName == "Room4")  // 确保列表至少有三个对象
{
    // 通过sprite_index获取对应的对象类型
    var first_obj_type = GetGameObjectFromSprite(ds_list_find_value(contacted_objects, 0));
    var second_obj_type = GetGameObjectFromSprite(ds_list_find_value(contacted_objects, 1));
    var third_obj_type = GetGameObjectFromSprite(ds_list_find_value(contacted_objects, 2));
	var forth_obj_type = GetGameObjectFromSprite(ds_list_find_value(contacted_objects, 3));
    
    // 检查这三个对象是否分别是obj1, obj3, obj2
    if (first_obj_type == obj_4 && second_obj_type == obj_3 && third_obj_type == obj_2&&forth_obj_type==obj_1)
    {
        // 将obj_4的sprite_index添加到contacted_objects列表
        ds_list_add(contacted_objects, spr_5);
        global.obj_5_created = true; // 标记obj_4已创建，防止再次创建
    }
}
	





if (keyboard_check_pressed(vk_space))  // 检查是否按下了空格键
{
    show = !show;  // 切换显示状态
}

