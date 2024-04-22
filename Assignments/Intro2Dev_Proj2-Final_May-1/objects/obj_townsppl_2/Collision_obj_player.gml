if(!spoken_to)
{
	other.conversable = true;
	if(keyboard_check_pressed(ord("E")))
	{
		other.conversation = true;
		conversing = true;
	}
}