/// @description Script
	
	//Local variables
	var LogDistance, Difference;
	
	//Set the culling
	Destructable();
	
	//Set the current segment value to the log player is standing on
	CurrentSegment = floor((Player.x - x) / 16) + 1
	
	//Clamp current segment
	CurrentSegment = clamp(CurrentSegment, 0, SegmentAmount-1);
	
	//Set max depression
	if (CurrentSegment <= SegmentAmount / 2)
		MaxDepression = CurrentSegment * 2; else MaxDepression = ((SegmentAmount - CurrentSegment) + 1) * 2;
	
	//Is standing on or not
	if(PlayerCheckObject(C_BOTTOM) && Player.Ground)
		StandingOn = true; else StandingOn = false;
	
	//Run the loop and set log y position
	for (i = 0; i < SegmentAmount; i ++)
	{
		//Set the difference between the loop and current segment
		Difference = abs((i + 1) - CurrentSegment);
		
		//Set the log distance
		if (i < CurrentSegment) 
		    LogDistance = 1 - (Difference / CurrentSegment); else LogDistance = 1 - (Difference / ((SegmentAmount - CurrentSegment) + 1));
		
		//Position the log
		if(StandingOn){
			//Move bridge's hitbox
			y = lerp(y, LogY[CurrentSegment], 0.2);
			
			//Move the log
			LogY[i] = lerp(LogY[i], BridgeY + floor(MaxDepression * dsin(90 * LogDistance)), 0.2);
		}
		
		//Get log position back when its not being standed on
		if(!StandingOn){
			//Move bridge's hitbox back
			y = lerp(y, BridgeY, 0.2);	
			
			//Move the log back
			LogY[i] = lerp(LogY[i], BridgeY, 0.2);
		}
	}
	
	//Position the player
	if(StandingOn)
		Player.y = floor(y) - Player.HitboxH;