draw_set_font(Font1);

if (global.player1Wins && !global.player2Wins) {
    draw_text(obj_player1.x - 50, obj_player1.y - 150, "Player 1 Wins with " + string(global.jumps1) + " jumps!");
}
if (global.player2Wins && !global.player1Wins) {
    draw_text(obj_player2.x - 50, obj_player2.y - 150, "Player 2 Wins with " + string(global.jumps2) + " jumps!");
}

if (global.player1Wins2) {
    draw_text(obj_player1.x - 50, obj_player1.y - 150, "Player 1 Wins! Player 2 out of sight!");
}
else if (global.player2Wins2) {
    draw_text(obj_player2.x - 50, obj_player2.y - 150, "Player 2 Wins! Player 1 out of sight!");
}

draw_text(obj_player1.x - 50, obj_player1.y - 100, "Jump Count: " + string(global.jumps1));
draw_text(obj_player2.x - 50, obj_player2.y - 100, "Jump Count: " + string(global.jumps2));

