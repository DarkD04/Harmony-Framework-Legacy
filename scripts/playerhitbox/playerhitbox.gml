function PlayerHitbox(){
		//Change wall radius y
	if(GroundAngle = 0 && Ground) WallRadiusH = 8 else WallRadiusH = 0;
	
	if(!Jumping && !Roll && State != ST_GLIDE)
		Camera.RollingOffset = 0;
		
	//Radius changes
	switch(Character){
		case CHAR_SONIC:
			HitboxW = 9;
			HitboxH = 19;
			WallRadiusW = 10;

			
			//Change radius when in ball form
			if(Jumping || Roll)
			{
				HitboxW = 7;
				HitboxH = 14;
				if(Roll) Camera.RollingOffset = 5;
			}
		break;
		
		case CHAR_TAILS:
			HitboxW = 9;
			HitboxH = 15;
			WallRadiusW = 10;
			
			//Change radius when in ball form
			if(Jumping || Roll)
			{
				HitboxW = 7;
				HitboxH = 14;
				if(Roll) Camera.RollingOffset = 1;
			}
		break;
		case CHAR_KNUX:
			HitboxW = 10;
			HitboxH = 19;
			WallRadiusW = 11;
			
			//Change radius when in ball form
			if(Jumping || Roll)
			{
				HitboxW = 7;
				HitboxH = 14;
				if(Roll) Camera.RollingOffset = 5;
			}
			
			//Change hitbox when gliding and sliding
			if(State = ST_GLIDE || State = ST_KNUXSLIDE) HitboxH = 10;
		break;
	}
	if(State = ST_KNUXSLIDE || State = ST_GLIDE || State = ST_KNUXFALL) WallRadiusH = 0;
}