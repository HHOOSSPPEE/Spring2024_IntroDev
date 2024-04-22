/// @param text_id
function scr_game_text(_text_id)
{
	switch(_text_id)
	{
		case "npc 1":
			scr_text("Hi! I'm npc one.");
			scr_text("Can I buy a new camera for 30 coins?");
				scr_option("Yeah", "npc 1 - yes");
				scr_option("Nah", "npc 1 - no");
			break;
			case "npc 1 - yes":
				scr_text_effect("Yay!!!!!!", -30, 0, 0);
				break;
			case "npc 1 - no":
				scr_text(">:(");
				break;
				
		
		case "npc 2":
			scr_text("Hi boss! My article about the latest feather fashion trends is almost finished.");
			scr_text("By the way, tomorrow is my nephew's school play.");
			scr_text("Can I take the day off to watch it?")
				scr_option("Yes, enjoy the play!", "npc 2 - yes")
				scr_option("No, you have 9836 unfinished articles.", "npc 2 - no")
			break;
			case "npc 2 - yes":
				scr_text_effect("Thanks boss!!", 0, -1, 5)
				break;
			case "npc 2 - no":
				scr_text_effect("Okay...", 0, +1, -5)
				break;
		
		
		case "npc 3":
			scr_text("I know a bird that wants to break into the journalism business.");
			scr_text("Can I hire them as a freelance writer for now?")
				scr_option("Yes", "npc 3 - yes")
				scr_option("No", "npc 3 - no")
			break;
			case "npc 3 - yes":
				scr_text_effect("Alright, I'll let them know!", -20, 2, 10)
				break;
			case "npc 3 - no":
				scr_text("Well, if you're sure...")
				break;
			
			
		case "npc 4":
			scr_text("SQUAWK!");
			break;
	}
}