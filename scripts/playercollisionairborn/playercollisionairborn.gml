function PlayerCollisionAirborn(){
	repeat(16){
		//Airborn wall collision
		//PlayerWallCollision();
	
		//Check for the ground
		if(CheckTerrain(-HitboxW, HitboxH) && YSpeed >= 0 || CheckTerrain(HitboxW, HitboxH) && YSpeed >= 0){
				Land = true;
				Ground = true;
				Roll = false;
				
				//Get angle 
				GroundAngle = GetAngle();
				
				//Landing speed
				if(abs(GroundSpeed) <= YSpeed){
					if(GroundAngle >= 24 && GroundAngle <= 45 || GroundAngle >= 316 && GroundAngle <= 338) GroundSpeed = (-YSpeed * 0.5 *(dsin(GroundAngle)));
					if(GroundAngle >= 46 && GroundAngle <= 90 || GroundAngle >= 270 && GroundAngle <= 315) GroundSpeed = -YSpeed * dsin(GroundAngle);
				}
		}
		
		
		//Ceiling collision
		if(CheckTerrain(-HitboxW, -HitboxH) || CheckTerrain(HitboxW, -HitboxH)){
			if(YSpeed < 0) YSpeed = 0;
			y += 1;
		}
		
	}
}