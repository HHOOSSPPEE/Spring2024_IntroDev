function scr_ui_text(_text_id)
{
	switch(_text_id)
	{
		//npcs
		case "npc 1":
			scr_text_ui("Press X to Speak to NPC 1")
		break;
		
		case "npc 2":
			scr_text_ui("Press X to Speak to NPC 2")
		break;
		
		case "npc 3":
			scr_text_ui("Press X to Speak to NPC 3")
		break;
		
		case "npc 4":
			scr_text_ui("Press X to Speak to NPC 4")
		break;
		
		
		
		//objects
		case "printer broken":
			scr_text_ui("Press Z to Fix Printer");
		break;
		case "printer fixed":
			scr_text_ui("All fixed!");
		break;
		
		
		
	}
	
}