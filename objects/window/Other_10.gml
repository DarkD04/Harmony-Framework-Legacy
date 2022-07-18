/// @description Resize the window
	//Screen resizing
	camera_set_view_size(view_camera[view_current],Game.windowWidth, Game.windowHeight);

	//Resize the window:
	window_set_size(Game.windowWidth*Game.windowSize, Game.windowHeight*Game.windowSize);

	//Resize the surface:
	surface_resize(application_surface ,Game.windowWidth, Game.windowHeight);
	
	//Resize the port
	view_set_wport(view_current, Game.windowWidth);
	view_set_hport(view_current, Game.windowHeight);
	
