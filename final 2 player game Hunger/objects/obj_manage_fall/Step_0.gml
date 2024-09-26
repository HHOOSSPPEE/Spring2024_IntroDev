
timer -= 1; 

if (timer <= 0) {


    instance_create_layer(random(room_width), 0, "Instances", obj_food);
	
    timer = 20; 
}








