/// @description Draw the swing
	//Draw the point
	draw_sprite(PointSprite, 0, x, y+8);
	
	//Chain code
	if(OnScreen(16*ChainAmount, 16*ChainAmount)){
		for(var i = 1; i < ChainAmount; i++){
			//Chain local variables
			var ChainX, ChainY;
		
			//Chain movement
			ChainX = x + (16*i) * dsin(dcos(Angle) * SwingRange);
			ChainY = y + (16*i) * dcos(dcos(Angle) * SwingRange);
		
			//Draw the chains
			draw_sprite(ChainSprite, 0, ChainX, ChainY+8);
		}
	}
	