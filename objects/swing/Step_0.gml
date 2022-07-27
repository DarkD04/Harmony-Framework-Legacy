/// @description Swing platform	
	//Update angle and modulate it
	Angle = (Angle + SwingSpeed) mod 360;
	
	//Platform local variables
	var ChainX, ChainY, PrevX, PrevY, DiffX, DiffY;
		
	//Platform movement
	ChainX = x + floor((16*ChainAmount) * dsin(dcos(Angle) * SwingRange));
	ChainY = y + floor((16*ChainAmount) * dcos(dcos(Angle) * SwingRange));
	
	//Platform code here
	with(Platform){
		//Set previous position
		PrevX = x;
		PrevY = y;
		
		//Position the platform
		x = ChainX;
		y = ChainY;
		
		//Get the difference to move the player
		DiffX = floor(x) - floor(PrevX);
		DiffY = floor(y) - floor(PrevY);
	
		//Move the player
		if(Player.Ground && PlayerCheckObject(C_BOTTOM_BIG)){
			Player.x += floor(DiffX);	
			Player.y += floor(DiffY);	
		}
	}