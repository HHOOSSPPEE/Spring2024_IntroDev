draw_set_font(font_1);
draw_set_color(c_black);

draw_text(20, camera_get_view_y(0) + 20, "Money: " + string(global.money));
draw_text(20, camera_get_view_y(0) + 45, "Readers: " + string(global.readers));
//draw_text(20, camera_get_view_y(0) + 70, "Productivity: " + string(global.production) + "%");

draw_set_alpha(text_alpha);
statChange();
draw_set_alpha(1);
