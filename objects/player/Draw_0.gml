/// @description Render the player

	draw_sprite_ext(sprite_index, image_index, floor(x), floor(y), image_xscale * Direction, image_yscale, image_angle, c_white, 1.0);
	
	//Hitbox debug
	/*draw_set_color(c_red);
	draw_set_alpha(0.5);
	draw_rectangle(floor(x)-WallRadiusW, floor(y)-HitboxH, floor(x)+WallRadiusW, floor(y)+HitboxH, false)
	draw_set_alpha(1);
	draw_set_color(c_white);