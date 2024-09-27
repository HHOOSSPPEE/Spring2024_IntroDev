draw_set_halign(fa_left);
draw_text_transformed(x, y, "Collected: " + string(global.collectible_count) + "/6", .2, .2, 0);
draw_text_transformed(x+40, y, "Score: " + string(global.total_score), .2, .2, 0);