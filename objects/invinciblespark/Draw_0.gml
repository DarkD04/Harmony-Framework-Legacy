/// @description Draw sparkles
	if(Mode = 0){
		for(var i = 0; i < 4; i++){
			draw_sprite(sprite_index, image_index, x+(16*dsin(Angle - 90*i)), y+(16*dcos(Angle - 90*i)))	
		}
	}
	
	for(var i = 0; i < 2; i++){
		if(Mode = 1)
			draw_sprite(sprite_index, image_index+(image_number/2), x+(16*dsin(Angle + 180*i)), y+(16*dcos(Angle + 180*i)))	
		
		if(Mode = 2)
			draw_sprite(sprite_index, image_index, x+(16*dsin(90+Angle - 180*i)), y+(16*dcos(90+Angle - 180*i)))	
	}