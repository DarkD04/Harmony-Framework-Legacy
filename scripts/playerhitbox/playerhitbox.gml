function PlayerHitbox(){
	if(!Jumping && !Roll)
		Camera.RollingOffset = 0;
		
	//Radius changes
	switch(Character){
		case CHAR_SONIC:
			HitboxW = 9;
			HitboxH = 19;
			WallRadiusW = 10;
			WallRadiusH = 0;
			
			//Change radius when in ball form
			if(Jumping || Roll)
			{
				HitboxW = 7;
				HitboxH = 14;
				if(Roll) Camera.RollingOffset = 5;
			}
		break;
	}
	
	//Change wall radius y
	if(Ground && !Land && GroundAngle = 0) WallRadiusH = 8;
}