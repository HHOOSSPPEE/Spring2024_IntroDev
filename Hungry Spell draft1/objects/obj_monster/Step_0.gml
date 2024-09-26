x += move_speed; // 更新位置

// 检查是否达到右边界
if (x > x_start + 300) {
    move_speed *= -1; // 反转移动速度
    image_xscale = -1; // 精灵朝向左
}

// 检查是否达到左边界
else if (x < x_start - 200) {
    move_speed *= -1; // 反转移动速度
    image_xscale = 1; // 精灵朝向右
}

// 根据移动方向设置精灵朝向
if (move_speed > 0) {
    image_xscale = -1; // 右移时精灵朝向右
} else if (move_speed < 0) {
    image_xscale = 1; // 左移时精灵朝向左
}


if(place_meeting(x,y,obj_wall)) move_speed*=-1;



if(died) {
    instance_destroy()
	//instance_create_depth(x,y-32,0,obj_soul)
}

if(place_meeting(x,y,obj_player1)){
	if(obj_player1.eating){
	died=true;
	 if(global.value + 25 <= global.max_value)
            global.value += 25;
        else
            global.value = global.max_value;
	}
	else room_goto(Room1)
}
