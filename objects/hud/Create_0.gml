/// @description Values
	
	//HUD Values
	Surface = surface_create(Game.windowWidth, Game.windowHeight);
	HudX = 16;
	
	//Font
	Numbers = font_add_sprite_ext(fontHud, "0123456789", false, 0);
	NumbersLife = font_add_sprite_ext(fontHudLife, "0123456789", false, 0);