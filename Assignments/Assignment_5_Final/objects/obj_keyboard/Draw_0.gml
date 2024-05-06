camX = camera_get_view_x(view_camera[0]);
camY = camera_get_view_y(view_camera[0]);

//set font
draw_set_halign(fa_center);
draw_set_font(fnt_main);
draw_set_color(c_black);

if (global.days == 1)
{
//draw arrow keys
draw_sprite_ext(spr_arrow_down, 0, camX + 20, camY + 120, .5, .5, 0, c_white, 1);
draw_sprite_ext(spr_arrow_up, 0, camX + 20, camY + 110, .5, .5, 0, c_white, 1);
draw_sprite_ext(spr_arrow_left, 0, camX + 10, camY + 120, .5, .5, 0, c_white, 1);
draw_sprite_ext(spr_arrow_right, 0, camX + 30, camY + 120, .5, .5, 0, c_white, 1);
draw_text(camX + 23, camY + 130, "MOVE");

//draw inventory
draw_sprite_ext(spr_e, 0, camX + 70, camY + 120, .5, .5, 0, c_white, 1);
draw_text(camX + 70, camY + 130, "INVENTORY");

//draw interactions
draw_sprite_ext(spr_spacebar, 0, camX + 105, camY + 120, 1, 1, 0, c_white, 1);
draw_text(camX + 123, camY + 130, "INTERACT");

//goal
draw_text(camX + 80, camY + 20, "SELL FOOD AND\nMAKE MONEY\nTO GO HOME!!!");
}
