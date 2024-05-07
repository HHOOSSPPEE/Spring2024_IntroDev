<<<<<<< Updated upstream
if global.alive = false
{
	draw_text(x,y,"space to restart")
}

if global.alive = false && keyboard_check(vk_space)
{
	room_goto(Room_start);
=======
if global.alive = false
{
	draw_text(x,y,"space to restart")
}

if global.alive = false && keyboard_check(vk_space)
{
	room_goto(Room_start);
>>>>>>> Stashed changes
}