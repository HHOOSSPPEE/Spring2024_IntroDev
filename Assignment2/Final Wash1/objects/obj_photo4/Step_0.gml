if (place_meeting(x, y, obj_water)) {
    image_alpha -= 0.001; 
    if(image_alpha <= 0) { 
        image_alpha = 0; 
        global.washed = true;
    }
}