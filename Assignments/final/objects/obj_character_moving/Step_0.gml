
if (!variable_instance_exists(self, "init")) {
    speed = 4; 
    direction = random(360);  
    init = true;
}

x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);


if (x < 0 || x > room_width) {
    direction = 180 - direction;
}

if (y < 0 || y > room_height) {
    direction = 360 - direction;
}




if (keyboard_check(vk_escape)){
    pressed = false;
}

