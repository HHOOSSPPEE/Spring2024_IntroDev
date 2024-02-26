if (!place_meeting(x, y + 1, obj_collider)) {
    vspeed += gravity;
} else {
    if (vspeed > 0) vspeed = 0;
    while (!place_meeting(x, y + 1, obj_collider)) {
        y += 1;
    }
    while (place_meeting(x, y, obj_collider)) {
        y -= 1;
    }
}

y += vspeed;

if (place_meeting(x + hspeed, y, obj_collider)) {
    while (!place_meeting(x + sign(hspeed), y, obj_collider)) {
        x += sign(hspeed);
    }
    hspeed = -hspeed;
} else if (place_meeting(x - hspeed, y, obj_collider)) {
    while (!place_meeting(x - sign(hspeed), y, obj_collider)) {
        x -= sign(hspeed);
    }
    hspeed = -hspeed;
}

x += hspeed;
