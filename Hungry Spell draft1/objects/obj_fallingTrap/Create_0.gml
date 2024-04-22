// Create Event for obj_fallingTrap
grv = 0.2; // 重力加速度
vertical_speed = 0; // 垂直速度，初始为0
maxFallSpeed = 10; // 最大下落速度
ascendingSpeed = -2; // 上升速度，负值表示向上
isFalling = false; // 是否正在下落的标志
startY = y; // 存储初始的Y坐标
topLimit = startY - 200; // 设置最高上升点为初始位置的200像素以上


