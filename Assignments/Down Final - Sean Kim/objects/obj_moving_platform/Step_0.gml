
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

if (place_meeting(x, y, obj_change_direction)) {
    direction = (direction + 180) mod 360;
}