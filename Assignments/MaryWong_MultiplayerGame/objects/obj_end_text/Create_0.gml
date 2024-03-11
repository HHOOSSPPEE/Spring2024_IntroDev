text = "Game over!";
txtcolor = c_white;

if (global.p1_score = 3 && global.p2_score = 3)
{
	text = "It's a Tie! (Unfortunately you are contractually obligated to play again)";
}

if (global.p1_score == 3 && !global.p2_score = 3)
{
	text = "Left Hand Wins! The witches reign supreme once more!";
	txtcolor = c_blue;
}

if (global.p2_score == 3 && !global.p1_score = 3)
{
	text = "Right Hand Wins! Down with left handers!";
	txtcolor = c_red;
}