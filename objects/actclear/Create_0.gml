/// @description Values
	Surface = surface_create(Game.ScreenWidth, Game.ScreenHeight);
	Timer = 0;
	State = 0;
	
	//HUD Offsets
	for(var i = 0; i <= 3; i++)
		OffsetX[i] = Game.ScreenWidth;
	
	//Bonus
	GetEndResults();
	TotalBonus = 0;