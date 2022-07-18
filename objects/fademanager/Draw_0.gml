/// @description Draw fade
	
	//Get screen position
	var cx, cy, sw, sh;
	cx = camera_get_view_x(view_camera[view_current])
	cy = camera_get_view_y(view_camera[view_current])
	sw = Game.windowWidth
	sh = Game.windowHeight
	
	draw_set_color(c_black);
	draw_set_alpha(Time);
	draw_rectangle(cx, cy, cx+sw, cy+sh, false)
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	//Fade time
	if(FadeMode = 0) Time = max(Time-Speed, 0);
	if(FadeMode = 1) Time = min(Time+Speed, 1);
