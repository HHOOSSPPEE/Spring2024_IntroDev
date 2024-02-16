//direction

//accelerate
if (can_move){
	horizontal_velocity += x_acc * _dir;
	//deccelerate
	if (abs(horizontal_velocity) >= max_velocity){
		//show_debug_message(can_move);
		can_move = false;
	}
}

if(!can_move){
    horizontal_velocity -= x_deceleration * _dir;
    
    // Check if the object has effectively stopped (velocity close to zero)
    if (abs(horizontal_velocity) <= x_deceleration) {
        horizontal_velocity = 0;
        stop = true;; // Update state to stop
    }
}

x += horizontal_velocity;

//destroy item if it stops moving
if (stop) {
    instance_destroy();
}