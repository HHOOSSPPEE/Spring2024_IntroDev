#macro INVENTORY_SLOTS 6

inventory = array_create(INVENTORY_SLOTS,-1);
randomize();

camX = camera_get_view_x(view_camera[0]);
camY = camera_get_view_y(view_camera[0]);


