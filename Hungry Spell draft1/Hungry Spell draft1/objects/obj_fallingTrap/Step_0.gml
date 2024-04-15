// Step Event for obj_fallingTrap

// 如果没有开始下落且未达到最高点
if (!isFalling && y > topLimit) {
    // 应用上升速度
 vertical_speed  = ascendingSpeed;
} else {
    // 一旦到达或超过最高点，开始下落
    isFalling = true;
}

// 如果正在下落
if (isFalling) {
    // 应用重力
    vertical_speed+=grv
   vertical_speed = min(vertical_speed, maxFallSpeed); // 限制最大下落速度
} 

// 更新位置
y += vertical_speed;

// 重置陷阱的位置和状态
if (y > room_height + 100) {
    y = -100; // 重置到屏幕顶部以上，模拟连续陷阱
    isFalling = false; // 停止下落
    vertical_speed = 0; // 重置速度
}

if(place_meeting(x,y,obj_ground)){

// Collision Event with obj_ground
isFalling = false; // 触地停止下落
vertical_speed = 0; // 停止垂直移动
 // 可选：重置到初始位置
}

//if(place_meeting(x,y,obj_player1)){
//	room_goto(Room1);
//}