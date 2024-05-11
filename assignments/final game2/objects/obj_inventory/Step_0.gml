//get selected item
selected_item = -1;

for (var i = 0; i < array_length(inv); i++)
    {
        var _xx = screen_x +  camera_get_view_x(view_camera[0]);
        var _yy = screen_y + sep*i +  camera_get_view_y(view_camera[0]);


        if mouse_x > _xx && mouse_x < _xx+30 && mouse_y > _yy && mouse_y < _yy +20
        {
            selected_item = i;
        }
    }

if selected_item != -1
{
    //drop the item
    if mouse_check_button_pressed(mb_right) 
    {
        array_delete(inv,selected_item, 1);
    }
}
// get selected item
if (invOpen = true)
{
    for (var i = 0; i < array_length(inv); i++) 
    {
        var _xx = screen_x +  camera_get_view_x(view_camera[0]);
        var _yy = screen_y +  camera_get_view_y(view_camera[0]);
        var _sep = sep;
        var _col = c_white;
    //icon
        draw_sprite(inv[i].icon, 0, _xx, _yy + _sep*i);

    //if selected, show yellow color
        if selected_item == i { _col = c_yellow;};
        draw_set_color(_col);

    //name of item
        draw_text( _xx + 30,_yy + sep*i, inv [i].name);

    //description
    if selected_item == i
    {
        draw_text_ext( _xx, _yy + _sep*array_length(inv), inv[i].description, 12, 80);
    }

    //set color back to white
        draw_set_color(c_white);

    }
}