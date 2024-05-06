global.ends=false;

/// @desc handle_food_collision(obj_id, value_increment)
/// @param obj_id 实例对象ID
/// @param value_increment 增加的分数值
function handle_food_collision(obj_id, value_increment) {
    var inst = instance_place(x, y, obj_id);
    if (inst != noone) {
        score1++;  // 增加分数
        // 安全地增加global.value
        global.value = min(global.value + value_increment, global.max_value);
        instance_destroy(inst);  // 销毁实例
    }
}
