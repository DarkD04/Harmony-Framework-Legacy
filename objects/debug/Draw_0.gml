/// @description Draw Debug stuff

	//Player debug sensors
	with(Player){
		draw_set_color(c_red);
		draw_set_alpha(0.5);
		draw_rectangle(floor(x)-WallRadiusW, floor(y)-HitboxH, floor(x)+WallRadiusW, floor(y)+HitboxH, false)
		draw_set_alpha(1);
		draw_set_color(c_white);
	
		draw_point(floor(x)-HitboxW*YDir+HitboxH*XDir, floor(y)+HitboxH*YDir+HitboxW*XDir);
		draw_point(floor(x)+HitboxW*YDir+HitboxH*XDir, floor(y)+HitboxH*YDir-HitboxW*XDir);
		draw_point(floor(x)-HitboxW*YDir-HitboxH*XDir, floor(y)-HitboxH*YDir+HitboxW*XDir);
		draw_point(floor(x)+HitboxW*YDir-HitboxH*XDir, floor(y)-HitboxH*YDir-HitboxW*XDir);
		
		draw_point(floor(x)+WallRadiusW*YDir-WallRadiusH*XDir, floor(y)+WallRadiusH*YDir-WallRadiusW*XDir);
		draw_point(floor(x)-WallRadiusW*YDir-WallRadiusH*XDir, floor(y)+WallRadiusH*YDir+WallRadiusW*XDir);
		
		draw_point(PointX[0], PointY[0]);
		draw_point(PointX[1], PointY[1]);
	}
	
		//Get screen position
	cx = camera_get_view_x(view_camera[view_current]);
	cy = camera_get_view_y(view_camera[view_current]);
	
	//Create surface if it doesn't exist
	if(!surface_exists(Surface)) Surface = surface_create(Game.ScreenWidth, Game.ScreenHeight);
	
	//Set surface target
	draw_set_font(Font);
	surface_set_target(Surface)
	draw_clear_alpha(c_black,0);
	
	draw_set_color(c_black)
	draw_set_alpha(0.6)
	draw_rectangle(Game.ScreenWidth-168, 8, Game.ScreenWidth-16, Game.ScreenHeight-64, false);
	draw_set_color(c_white)
	draw_set_alpha(1)
	
	draw_text(Game.ScreenWidth-162, 8, "THE PLAYER DEBUG")	

	
	for(var i = 0; i < array_length(DebugText); i++){
		draw_text(Game.ScreenWidth-168, 32+(8*i), DebugText[i] + string(DebugInfo[i]))	
	}
	
	draw_text(Game.ScreenWidth-132, Game.ScreenHeight-20,"FPS: "+string(fps));
	draw_text(Game.ScreenWidth-132, Game.ScreenHeight-12,"TRUE FPS: "+string(floor(fps_real)));

	//Reset surface target ID
	surface_reset_target();
	
	draw_surface(Surface, cx, cy);