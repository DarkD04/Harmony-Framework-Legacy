/// @description Creation

	BackgroundImage = sprite_create_from_surface(application_surface, 0, 0, Game.ScreenWidth, Game.ScreenHeight, 0, 0, 0, 0);
	Surface = noone;
	Section = 0;
	Select = 0;
	CoolDown = 4;

	//Storage array

	Presentation = [];
	Stages = [TechdemoTower1, EmptyStage];
	Unfinished = [];