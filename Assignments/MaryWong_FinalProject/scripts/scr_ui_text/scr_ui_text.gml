function scr_ui_text(_text_id)
{
	switch(_text_id)
	{
		//npcs
		case "1":
			scr_text_ui("Press X to Speak to Sparrow")
		break;
		
		case "2":
			scr_text_ui("Press X to Speak to Robin")
		break;
		
		case "3":
			scr_text_ui("Press X to Speak to Luna")
		break;
		
		case "4":
			scr_text_ui("Press X to Speak to Sky")
		break;
		
		case "tutorial":
			scr_text_ui("Press X to Speak to Phoenix")
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