/// @description Draw the HUD

	//Local variables
	var cx, cy, MilSec, Sec, Min;
	
	MilSec = floor(Game.StageTimer/10) mod 100;
	Sec = floor(Game.StageTimer/1000) mod 60;
	Min = floor(Game.StageTimer/60000);
	
	//Get screen position
	cx = camera_get_view_x(view_camera[view_current]);
	cy = camera_get_view_y(view_camera[view_current]);
	
	//Create surface if it doesn't exist
	if(!surface_exists(Surface)) Surface = surface_create(Game.windowWidth, Game.windowHeight);
	
	//Set surface target
	surface_set_target(Surface);
	draw_clear_alpha(c_black,0);
	
	//Draw the hud text
	draw_sprite(sprHudText, 0, HudX, 8);
	draw_sprite(sprHudText, 1, HudX, 25);
	draw_sprite(sprHudText, 2, HudX, 41);
	draw_sprite(sprHudLifeIcon, Player.Character, HudX, Game.windowHeight-8);
	
	//Draw numbers
	draw_set_halign(fa_right);
	draw_set_font(Numbers);
	
	//Draw score numbers
	draw_text(112, 10, string(Game.Score));
	draw_text(112, 27, (MilSec > 9 ? "" : "0") + string(MilSec));
	draw_text(88, 27, (Sec > 9 ? "" : "0") + string(Sec));
	draw_text(64, 27, string(Min));
	draw_text(88, 42, string(Game.Rings));
	
	//Life icon number
	draw_set_font(NumbersLife);
	draw_text(65, Game.windowHeight-15, string(Game.Life));
	
	//Reset stuff
	draw_set_halign(fa_left);
	
	//Reset surface target ID
	surface_reset_target();
	
	//Draw the surface
	draw_surface(Surface, cx, cy);