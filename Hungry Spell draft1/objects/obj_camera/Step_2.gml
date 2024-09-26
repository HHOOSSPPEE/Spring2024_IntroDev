if(x<0)x=0;
if(x+ view_width>room_width) x = room_width-view_width;

//if(y+view_height>obj_player1.y) y= obj_player1.y-view_height+200

camera_set_view_pos(view_camera[0],x,y);
