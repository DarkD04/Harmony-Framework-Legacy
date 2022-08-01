/// @description Script
	//Local variables
	var DifferenceX, DifferenceY;
	
	//Set old position
	OldX = x;
	OldY = y;
	
	//Position the platform
	switch(MovementType){
		case "Linear":
			x = floor(xstart + RangeX * dsin(AngleX));
			y = floor(ystart + RangeY * dsin(AngleY));
			break;
			
		case "Circular":
			x = floor(xstart + RangeX * dsin(AngleX));
			y = floor(ystart + RangeY * dcos(AngleY));
			break;
	}

	//Add angles and modulate them
	AngleX = (AngleX + XSpeed) mod 360;
	AngleY = (AngleY + YSpeed) mod 360;
	
	//Get the difference to move the player
	DifferenceX = floor(x) - floor(OldX);
	DifferenceY = floor(y) - floor(OldY);
	
	//Move the player
	if(Player.Ground && PlayerCheckObject(C_BOTTOM_BIG)){
		Player.x += floor(DifferenceX);	
		Player.y += floor(DifferenceY);	
	}
	
	//Attach objects to the platform
	var Platform = self;
	
	with(SpringVertical){
		if(collision_rectangle(floor(x)-Platform.AttachRange, floor(y)-Platform.AttachRange, floor(x)+Platform.AttachRange, floor(y)+Platform.AttachRange, Platform, false, false)){
			x += floor(DifferenceX);	
			y += floor(DifferenceY);	
		}
	}