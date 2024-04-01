draw_set_font(Font1);

// Draw Event of obj_TimerController
var minutes = floor(timer / 60);
var seconds = floor(timer) mod 60;
var displayTime = string_format(minutes, 2, 0) + ":" + string_format(seconds, 2, 0); // Formats time as MM:SS

// Set the font and color if needed
//draw_set_font(fnt_Timer); // Use your desired font here
draw_set_color(c_black); // Set text color

// Draw the timer string on the screen
draw_text(x, y, displayTime);
