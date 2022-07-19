function PlayerVisualAngle(){
	//Visual angle
	if(Ground)
	{
		//Visual angle wraping
		if(GroundAngle <= 45 && VisualAngle >= 180) VisualAngle = 0;
		if(GroundAngle >= 180 && VisualAngle <= 45) VisualAngle = 360;
		
		//Rorate to the target
		if(GroundAngle >= 40 && GroundAngle <= 320)
			VisualAngle = VisualAngle + (0.1 + abs(GroundSpeed * 0.03)) * (GroundAngle - VisualAngle);
			
		//Return back to 0
		if(GroundAngle < 40) VisualAngle = max(VisualAngle - 2 - abs(GroundSpeed * 0.8), 0);
		if(GroundAngle > 320) VisualAngle = min(VisualAngle + 2 + abs(GroundSpeed * 0.8), 360);
		
	}
	else
	{
		if(VisualAngle <= 180) VisualAngle = max(VisualAngle-2.8125, 0) else VisualAngle = min(VisualAngle+2.8125, 360);
	}
	
	//Force visual angle to 0 when wrong animation is playing
	if(Animation != ANIM_WALK && Animation != ANIM_RUN && Animation != ANIM_PEELOUT) VisualAngle = 0;
	
	//Change sprite's angle
	image_angle = VisualAngle;
}