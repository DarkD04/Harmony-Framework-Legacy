/// @description Draw monitor and icons
	draw_sprite(sprite_index, image_index, floor(x), floor(y));
	
	//Draw monitor icon
	if(Age < 50) draw_sprite(Icon, 0, floor(x), (!Destroyed ? floor(y)-4 : IconY));
	
	//Draw static
	if(!Destroyed) draw_sprite(sprMonitorStatic, min(Game.ObjectTimer/4 mod 16, sprite_get_number(sprMonitorStatic)-1),floor(x), floor(y)-3);