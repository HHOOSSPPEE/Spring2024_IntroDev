// Step Event of obj_TimerController
if (timer >= 1) {
    timer -= 1 / room_speed; // Decrease timer based on the room's speed (fps)
} else {
    room_goto(rm_end);
}
