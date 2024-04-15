// End Step Event

y += playerY; // 更新玩家的位置
obj_camera.y+=playerY;

// 更新相机位置
if (isGrounded > 0) {
    // 如果玩家在地面上，使相机平滑跟随玩家的Y坐标
    obj_camera.y = lerp(obj_camera.y, y, 0.1); // 使用线性插值函数lerp进行平滑过渡
} else if(y>100){
    // 如果玩家在空中，根据玩家的Y速度调整相机的Y坐标
    obj_camera.y += playerY;
    
    // 额外的检查以防止相机在玩家跳跃时过度上移
    if (playerY < 0 && obj_camera.y < y - 50) { // 防止相机跟踪过高，'50'是一个可以调整的阈值
       
		obj_camera.y = y - 50;
    }
}


