/// @description Script

	//Culling
	var c, cx, cy, sw, sh;
	c = view_camera[view_current];
	cx = floor(camera_get_view_x(c));
	cy = floor(camera_get_view_y(c));
	sw = Game.ScreenWidth;
	sh = Game.ScreenHeight;
	
	//Activate the object when its onscreen
	instance_activate_region(cx-64, cy-64, sw+64*2, sh+64*2, true);
	instance_activate_region(Player.x-64, Player.y-64, 128, 128, true);
	
	//Timers
	if(!DisableTimer) Game.StageTimer += 1000/60;
	Game.ObjectTimer += 1;

	//Hide collision layer
	layer_set_visible("Collision", false);
	
	//Break badnik chain when landing
	if(Player.Land) BadnikChain = 0;