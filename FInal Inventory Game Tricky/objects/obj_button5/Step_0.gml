found = false;


// 定义空心方框的边界
var left = x - width / 2;
var right = x + width / 2;
var top = y - height / 2;
var bottom = y + height / 2;

// 对 obj_1, obj_2, obj_3, obj_4 进行检查
var object_types = [obj_1, obj_2, obj_3, obj_4,obj_5];

// 遍历每种对象类型
for (var i = 0; i < array_length_1d(object_types); i++) {
    var obj_type = object_types[i];
    // 检查当前类型的任一实例是否在空心方框范围内
    var instance = instance_place(left + width / 2, top + height / 2, obj_type);
    if (instance != noone) {
        found = true; // 如果找到至少一个实例在范围内，将 found 设置为 true
        // 如果找到的是 obj_2
        if (obj_type == obj_5) {
            obj5Found = true;
        }
        break; // 找到后立即退出循环
    }
}

// 如果没有找到任何实例，则将 occupied 设置为 false
if (!found) {
    occupied = false;
}

// 如果找到的是 obj_2 实例，则输出特定调试信息
if (obj5Found) {
   // show_debug_message("Yes");
} 


