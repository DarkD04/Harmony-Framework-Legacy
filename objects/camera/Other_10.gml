/// @description Normal Scrolling

	//Scroll horizontall:
	if(Target.x >= TargetX + MarginR && HorizontalLag = 0)
		TargetX = min(TargetX+SpeedX, Target.x - MarginR);
		
	if(Target.x <= TargetX - MarginL && HorizontalLag = 0)
		TargetX = max(TargetX-SpeedX, Target.x + MarginL);
	
	//Subtract horizontal lag timer
	HorizontalLag = max(HorizontalLag - 1, 0);
	
	//Scroll horizontall:
	if(!Target.Ground || Target.State = ST_KNUXSLIDE)
	{
		if(Target.y >= TargetY + MarginB && VerticalLag = 0)
			TargetY = min(TargetY+SpeedY, Target.y - MarginB);
		
		if(Target.y <= TargetY - MarginT && VerticalLag = 0) 
			TargetY = max(TargetY-SpeedY, Target.y + MarginT);
	}else
	{
		TargetY = Approach(TargetY, Target.y, min(6+abs(Target.GroundSpeed*dsin(Target.GroundAngle)),16));
	}
	
	//Subtract horizontal lag timer
	VerticalLag = max(VerticalLag - 1, 0);
	
	//Look up and down
	if(Target.State = ST_LOOKUP)
		LookTimer -= 1;
		
	if(Target.State = ST_LOOKDOWN)
		LookTimer += 1;
		
	//Restart looking timer
	if(Target.State != ST_LOOKUP && LookTimer < 0 || Target.State != ST_LOOKDOWN && LookTimer > 0)
		LookTimer = 0;
		
	//Shifting time
	if(LookTimer <= -120)
		LookShift = Approach(LookShift, -104, 2);
	
	if(LookTimer >= 120)
		LookShift = Approach(LookShift, 88, 2);
	
	//Shift back
	if(LookTimer = 0)
		LookShift = Approach(LookShift, 0, 2);