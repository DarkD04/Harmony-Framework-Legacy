/// @description Knuckles Camera
	if(Target.x >= TargetX + MarginR)
		TargetX = min(TargetX+2, Target.x - MarginR);
		
	if(Target.x <= TargetX - MarginL)
		TargetX = max(TargetX-2, Target.x + MarginL);
	
	if(Target.y >= TargetY + 0)
		TargetY = min(TargetY+3, Target.y - 0);
		
	if(Target.y <= TargetY - 0)
		TargetY = max(TargetY-3, Target.y + 0);
	