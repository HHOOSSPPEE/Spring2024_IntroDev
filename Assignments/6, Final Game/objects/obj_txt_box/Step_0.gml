//close text box
if((obj_player.lvl == 1 && !instance_exists(obj_narrative))
|| (obj_player.lvl == 2 && obj_player.close == true)
|| (obj_player.lvl == 3 && !instance_exists(obj_narrative_2)))
{
	visible = false;
}