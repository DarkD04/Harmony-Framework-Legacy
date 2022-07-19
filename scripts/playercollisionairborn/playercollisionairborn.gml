function PlayerCollisionAirborn(){
	//Airborn wall collision
	PlayerWallCollision();
	
	//Check for the ground
		//Slope Up
	if(!Ground){
		if(CheckTerrain(-HitboxW, HitboxH) && YSpeed >= 0 || CheckTerrain(HitboxW, HitboxH) && YSpeed >= 0){
			Jumping = false
			Roll = false;
			PlayerHitbox();
			while(CheckTerrain(-HitboxW, -HitboxH) || CheckTerrain(HitboxW, -HitboxH)) y-=1;
			Ground = true;
			Land = true;
			LandTimer = 4;
				
			//Get angle 
			GroundAngle = GetAngle();
				
			//Landing speed
			if(abs(GroundSpeed) <= YSpeed){
				if(GroundAngle >= 24 && GroundAngle <= 45 || GroundAngle >= 316 && GroundAngle <= 338) GroundSpeed = (-YSpeed * 0.5 *(dsin(GroundAngle)));
				if(GroundAngle >= 46 && GroundAngle <= 90 || GroundAngle >= 270 && GroundAngle <= 315) GroundSpeed = -YSpeed * dsin(GroundAngle);
			}
		}
	}
	//Player wall collision
	PlayerWallCollision();	
	
	//Ceiling collision
	while(CheckTerrain(-HitboxW, -HitboxH) || CheckTerrain(HitboxW, -HitboxH)){
		if(YSpeed < 0) YSpeed = 0;
		y += 1;
	}
		
	
}