/// @description Draw water
	//Camera position
	var cx, cy, sw, sh;
	cx = camera_get_view_x(view_camera[view_current])-64;
	cy = camera_get_view_y(view_camera[view_current])
	sw = Game.ScreenWidth;
	sh = Game.ScreenHeight;
	
	//Set x position to the left side of the screen
	x = cx;
	
	//Draw water
	draw_set_color(WaterColor);
	gpu_set_blendmode_ext(bm_dest_colour,bm_zero);
	draw_rectangle(cx, max(y, cy), cx+sw+64, max(y, cy)+sh, false);
	gpu_set_blendmode(bm_normal);
	draw_set_color(c_white);
	
	//Draw the water horizon
	for(var i = 0; i < ScreenWidth+1; i++)
		draw_sprite(sprite_index, image_index, (round(cx/SpriteWidth)*SpriteWidth)+SpriteWidth*i, y);