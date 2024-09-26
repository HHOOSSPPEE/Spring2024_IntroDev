// Step 事件中更新计时器
if (global.timer > 0) {
    global.timer -= (2 / room_speed); // 每秒减少1
} else {
    // 时间到，执行相应操作，例如游戏结束
    global.timer = 0;
}







