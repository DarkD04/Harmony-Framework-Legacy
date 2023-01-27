/// @description Change window size

	//Change the value and modulate it
	Game.ScreenSize += 1;
	
	//Reset
	if(Game.ScreenSize > 4) Game.ScreenSize = 1;
	
	//Call the resize event
	event_user(0);