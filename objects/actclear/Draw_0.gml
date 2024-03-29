/// @description Draw End Card
	//Local variables
	var cx, cy;

	//Get screen position
	cx = camera_get_view_x(view_camera[view_current]);
	cy = camera_get_view_y(view_camera[view_current]);
	
	//Create surface if it doesn't exist
	if(!surface_exists(Surface)) Surface = surface_create(Game.ScreenWidth, Game.ScreenHeight);
	
	//Set surface target
	surface_set_target(Surface);
	draw_clear_alpha(c_black,0);
	
	//Draw the end card text
	draw_sprite(hudCharGot, Player.Character, Game.ScreenWidth/2 - OffsetX[0], Game.ScreenHeight/2 - 56);
	draw_sprite(hudThroughZone, 0, Game.ScreenWidth/2 + OffsetX[0], Game.ScreenHeight/2 - 40);
	
	draw_sprite(hudEndCardText, 0, Game.ScreenWidth/2-98 + OffsetX[1], Game.ScreenHeight/2);
	draw_sprite(hudEndCardText, 1, Game.ScreenWidth/2-98 + OffsetX[2], Game.ScreenHeight/2 + 16);
	draw_sprite(hudEndCardText, 2, Game.ScreenWidth/2-98 + OffsetX[3], Game.ScreenHeight/2 + 48);
	
	
	//Draw numbers
	draw_set_halign(fa_right);
	draw_set_font(HUD.Numbers);
	
	//Draw text
	draw_text(Game.ScreenWidth/2+82 + OffsetX[1], Game.ScreenHeight/2, string(RingBonus));
	draw_text(Game.ScreenWidth/2+82 + OffsetX[2], Game.ScreenHeight/2+16, string(TimeBonus));
	draw_text(Game.ScreenWidth/2+74 + OffsetX[3], Game.ScreenHeight/2+48, string(TotalBonus));
	
	draw_set_halign(fa_left);
	
	//Reset surface target ID
	surface_reset_target();
	
	//Draw the surface
	draw_surface(Surface, cx, cy);