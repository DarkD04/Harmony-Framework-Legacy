/// @description Values
	Surface = surface_create(Game.windowWidth, Game.windowHeight);
	Timer = 0;
	State = 0;
	
	//HUD Offsets
	for(var i = 0; i <= 3; i++)
		OffsetX[i] = Game.windowWidth;
	
	//Bonus
	GetEndResults();
	TotalBonus = 0;