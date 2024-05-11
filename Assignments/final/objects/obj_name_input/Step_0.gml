
var newInput = keyboard_string;
if (string_length(text) + string_length(newInput) > maxLength & isActive)
{
    newInput = string_copy(newInput, 1, maxLength - string_length(text));
}
text += newInput;


keyboard_string = "";
global.name = keyboard_string;


if (keyboard_check_pressed(vk_backspace))
{
	text = "";
}
/*
if (keyboard_check_pressed(vk_enter) & isActive)
{
	isActive = false;
}

if (keyboard_check_pressed(vk_enter) & !isActive)
{
	room_goto_next()
}

*/


