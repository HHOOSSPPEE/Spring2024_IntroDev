// Step Event for the object
x += move_speed; // 每个步进事件更新位置

// 检查是否超出初始位置的设定范围
if (x < startX - range || x > startX + range) {
    move_speed *= -1; // 如果超出范围，反转移动方向
}

//if(place_meeting(x,y-5,obj_player1)){
//	if(move_speed<0){
//		if(obj_player1.moveSpeed>0){
//			show_debug_message("111")
//		}
//	}
//}
	