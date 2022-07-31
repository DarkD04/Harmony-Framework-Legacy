/// @description Resize the window
	//Screen resizing
	camera_set_view_size(view_camera[view_current], Game.ScreenWidth, Game.ScreenHeight);

	//Resize the window:
	window_set_size(Game.ScreenWidth*Game.ScreenSize, Game.ScreenHeight*Game.ScreenSize);

	//Resize the surface:
	surface_resize(application_surface, Game.ScreenWidth, Game.ScreenHeight);
	
	//Resize the port
	view_set_wport(view_current, Game.ScreenWidth);
	view_set_hport(view_current, Game.ScreenHeight);