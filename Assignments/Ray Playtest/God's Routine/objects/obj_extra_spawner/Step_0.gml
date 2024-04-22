// Handle instance spawning
if (spawntimer > 0) {
    spawntimer -= 1;
} else {
    // Choose a random object type from the list
	var index = irandom_range(0, array_length_1d(obj_list) - 1);
	
    var obj_to_create = obj_list[index];
    var xpos = random_range(130, 1150);
    var ypos = random_range(45, 560);
    
    // Create an instance of the chosen object at a random position and depth
    var new_instance = instance_create_depth(xpos, ypos, -10, obj_to_create);
    
    // Add the ID of the new instance to the list of created instances
    ds_list_add(obj_created_list, new_instance);
    
    // Reset the spawn timer
    spawntimer = 100;
}


// Handle instance destruction
if (destroytimer > 0) {
    destroytimer -= 1;
} else {
    if (!ds_list_empty(obj_created_list)) {
        // Get the ID of the first instance in the list
        var instance_to_destroy = ds_list_find_value(obj_created_list, 0);
        
        // Check if the instance exists and destroy it if it does
        if (instance_exists(instance_to_destroy)) {
            instance_destroy(instance_to_destroy);
        }
        
        // Remove the instance from the list
        ds_list_delete(obj_created_list, 0);
    }
    
    // Reset the destroy timer
    destroytimer = 150;
}
if(	obj_player.redamount >= global.Potion_1){
	array_delete(obj_list, 0, 1);
}
/*    yellowamount >= global.Potion_2 &&
    greenamount >= global.Potion_3 && 
    blueamount >= global.Potion_4 &&
    pinkamount >= global.Potion_5
	*/