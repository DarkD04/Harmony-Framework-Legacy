function HandleObjectCollision(){
	PlayerHitbox();
	
	///Full ground collision
	if(Ground && OnObject){
		while(ObjectCollision(-WallRadiusW, 0, WallRadiusW, HitboxH+8, true) && !ObjectCollision(-WallRadiusW, 0, WallRadiusW, HitboxH, true)){
			y += 1;	
		}
		
		while(ObjectCollision(-WallRadiusW, 0, WallRadiusW, HitboxH, true)){
			y -= 1;	
		}
	}

	
		//Left Wall
		if(GroundSpeed >= -2){
			while(ObjectCollision(0, -HitboxH+3, WallRadiusW, HitboxH-3)){
				if(WallStopper){
					GroundSpeed = 0;
					XSpeed = 0;
				}
				x -= 1;
			}
		}
	
		//Right Wall
		if(GroundSpeed <= 2){
			while(ObjectCollision(-WallRadiusW, -HitboxH+3, 0, HitboxH-3)){
				if(WallStopper){
					GroundSpeed = 0;
					XSpeed = 0;
				}
				x += 1;
			}
		}
	
	
	//Ceiling collision
	while(ObjectCollision(-WallRadiusW, -HitboxH+min(YSpeed/3, 0), WallRadiusW, 0) && YSpeed < 0){
		y+=1;
		YSpeed = 0;
	}
	
	//Landing
	if(ObjectCollision(-WallRadiusW, 0, WallRadiusW, HitboxH+max(YSpeed/2, 0), true) && !OnObject && YSpeed >= 0){
		if(CanLand)Jumping = false
		Roll = false;
		PlayerHitbox();
		Ground = true;
		Land = true;
		LandTimer = 4;
		OnObject = true;
	}
	//Switch on object flags fix
	if(CheckTerrain(-HitboxW, HitboxH+8) || CheckTerrain(HitboxW, HitboxH+8)) OnObject = false;
	if(ObjectCollision(-WallRadiusW, 0, WallRadiusW, HitboxH+8, true)) OnObject = true;
	
	//Full ground collision POST
	if(Ground && OnObject){
		while(ObjectCollision(-WallRadiusW, 0, WallRadiusW, HitboxH+8, true) && !ObjectCollision(-WallRadiusW, 0, WallRadiusW, HitboxH, true)){
			y += 1;	
		}
		
		while(ObjectCollision(-WallRadiusW, 0, WallRadiusW, HitboxH, true)){
			y -= 1;	
		}
		
		if(!ObjectCollision(-WallRadiusW, 0, WallRadiusW, HitboxH+2, true)){
			OnObject = false;
		}
	}
	
	//Disable on object collision in the air
	if(!Ground) OnObject = false;
}