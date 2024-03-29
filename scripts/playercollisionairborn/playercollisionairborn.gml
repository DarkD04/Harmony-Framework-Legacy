function PlayerCollisionAirborn(){	
	//Check for the ground
	if(!Ground && CeilingSide = 0){
		if(CheckTerrain(-HitboxW, HitboxH) && YSpeed >= 0 || CheckTerrain(HitboxW, HitboxH) && YSpeed >= 0){
			if(CanLand) Jumping = false
			if(State = ST_ROLL) State = ST_NONE;
			Ground = true;
			Land = true;
			LandTimer = 4;
				
			//Get angle 
			GroundAngle = GetAngle();
			
			//Landing speed
			if(abs(GroundSpeed) <= YSpeed){
				if(GroundAngle >= 24 && GroundAngle <= 45 || GroundAngle >= 316 && GroundAngle <= 338) GroundSpeed -= (YSpeed * 0.5 *(dsin(GroundAngle)));
				if(GroundAngle >= 46 && GroundAngle <= 90 || GroundAngle >= 270 && GroundAngle <= 315) GroundSpeed -= YSpeed * dsin(GroundAngle);
			}
		}
	}
	//Ceiling landing code
	if(CheckTerrain(-HitboxW, -HitboxH) && !CheckTerrain(HitboxW, -HitboxH) && YSpeed < -3 && !Ground || CheckTerrain(HitboxW, -HitboxH) && !CheckTerrain(-HitboxW, -HitboxH) && YSpeed < -3 && !Ground){
		CeilingSide = 1;	
	}
	
	if(CeilingSide = 1){
		var TempAngle = GetAngle();	
		if(TempAngle <= 160 && ControlLock = 0 || TempAngle >= 200 && ControlLock = 0) {
			GroundAngle = GetAngle();
			CeilingSide = 2
		} else CeilingSide = 0;
	}
	
	if(CeilingSide = 2){
		GroundSpeed = -YSpeed * dsin(GroundAngle)*1.2;
		
		if(Ground) CeilingSide = 0;
		State = ST_NONE;
		Ground = true
	}
	
	//Ceiling collision
	while(CheckTerrain(-HitboxW, -HitboxH) && !Ground || CheckTerrain(HitboxW, -HitboxH) && !Ground){
		if(YSpeed < 0){
			YSpeed = 0;
			TailsGravity = 1;
		}
		y += 1;
	}
}