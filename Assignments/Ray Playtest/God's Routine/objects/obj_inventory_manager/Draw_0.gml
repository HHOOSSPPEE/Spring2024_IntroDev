draw_self();

var red_ratio = obj_player.redamount/global.Potion_1;
drawBar(160, 130, 200, 50, red_ratio, make_color_rgb(222, 26, 26));
var yellow_ratio = obj_player.yellowamount/global.Potion_2;
drawBar(160, 245, 200, 50, yellow_ratio, make_color_rgb(247, 179, 43));
var green_ratio = obj_player.greenamount/global.Potion_3;
drawBar(160,350, 200, 50, green_ratio, make_color_rgb(73, 132, 103));
var blue_ratio = obj_player.blueamount/global.Potion_4;
drawBar(160, 450, 200, 50, blue_ratio, make_color_rgb(20, 189, 235));
var pink_ratio = obj_player.pinkamount/global.Potion_5;
drawBar(160, 560, 200, 50, pink_ratio, make_color_rgb(180, 65, 124));
