/// @param text_id
function scr_game_text(_text_id)
{
	switch(_text_id)
	{
		case "1":
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
				
		
		case "2":
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
		
		
		case "3":
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
			
			
		case "4":
			scr_text("SQUAWK!");
			break;
		
		
		case "tutorial":
			scr_text("Hi boss! How can I help?");
				scr_option("How to play", "tutorial - start")
				scr_option("See you later!", "tutorial - end")
			break;
			case "tutorial - end":
				scr_text("Good luck!")
			break;
			case "tutorial - start":
				scr_text("Welcome to Bird is the Word, the #1 news agency for feathered readers!")
				scr_text("Your goal is to earn as much money as possible! We earn 2 coins per reader per second.")
				scr_text("To increase readers, make sure all office appliances and employees are working.")
				scr_text("Any employees with a red ? above their head will want to talk to you.")
				scr_text("Need me to repeat anything?")
					scr_option("Say the whole thins again I wasn't listening", "tutorial - start")
					scr_option("No, see you later!", "tutorial - end")
				break;
	}
}