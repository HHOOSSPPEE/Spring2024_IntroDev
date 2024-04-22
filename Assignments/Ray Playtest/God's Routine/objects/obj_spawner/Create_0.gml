// Initialize the spawn timer for creating new instances
spawntimer = 50;

// Initialize the destroy timer for removing instances
destroytimer = 100;

// Define the list of objects that can be spawned
obj_list = [obj_red, obj_blue, obj_pink, obj_yellow, obj_green];

// Create a dynamic list to keep track of spawned instances
obj_created_list = ds_list_create();


randomize()