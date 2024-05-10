draw_set_color(c_blue);
draw_set_font(Font2);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(100, 10, "Jumps: " + string(global.jumps1));

draw_text(840, 10, "Jumps: " + string(global.jumps2));

if (global.player1Wins && !global.player2Wins) {
	draw_set_font(Font1);
    draw_text(400, 300, "Player 1 Wins with " + string(global.jumps1) + " jumps!");
}
if (global.player2Wins && !global.player1Wins) {
	draw_set_font(Font1);
    draw_text(400, 300, "Player 2 Wins with " + string(global.jumps2) + " jumps!");
}

if (global.player1Wins2) {
	draw_set_font(Font1);
    draw_text(400, 300, "Player 1 Wins! Player 2 out of sight!");
}
else if (global.player2Wins2) {
	draw_set_font(Font1);
    draw_text(400, 300, "Player 2 Wins! Player 1 out of sight!");
}