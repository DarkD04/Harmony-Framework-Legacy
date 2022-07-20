/// @description Draw the bridge

	//Loop and draw the logs
	for(i = 0; i < SegmentAmount; i++){
		draw_sprite(LogSprite, 0, x+(16*i), LogY[i]);
	}