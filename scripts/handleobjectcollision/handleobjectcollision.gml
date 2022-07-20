function HandleObjectCollision(){
	if(LandTimer < 3 || Land){
		//Left Wall
		if(GroundSpeed >= 0){
			while(ObjectCollision(0, -HitboxH+2, WallRadiusW, HitboxH-2)){
				if(WallStopper){
					GroundSpeed = 0;
					XSpeed = 0;
				}
				x -= 1;
			}
		}
	
		//Right Wall
		if(GroundSpeed <= 0){
			while(ObjectCollision(-WallRadiusW, -HitboxH+2, 0, HitboxH-2)){
				if(WallStopper){
					GroundSpeed = 0;
					XSpeed = 0;
				}
				x += 1;
			}
		}
	}
	//Ceiling collision
	while(ObjectCollision(-WallRadiusW, -HitboxH, WallRadiusW, 0) && YSpeed < 0){
		y+=1;
		if(YSpeed < 0) YSpeed = 0;
	}

	
	//Landing
	if(ObjectCollision(-WallRadiusW, 0, WallRadiusW, HitboxH+max(YSpeed, 0), true) && !OnObject && YSpeed >= 0){
		Jumping = false
		Roll = false;
		PlayerHitbox();
		Ground = true;
		Land = true;
		LandTimer = 4;
		OnObject = true;
	}
		
	//Full ground collision
	if(Ground && OnObject){
		while(ObjectCollision(-WallRadiusW, 0, WallRadiusW, HitboxH+8, true) && !ObjectCollision(-WallRadiusW, 0, WallRadiusW, HitboxH, true)){
			y += 1;	
		}
		
		while(ObjectCollision(-WallRadiusW, 0, WallRadiusW, HitboxH, true)){
			y -= 1;	
		}
		
		if(!ObjectCollision(-WallRadiusW, 0, WallRadiusW, HitboxH+2, true)){
			Ground = false;
			OnObject = false;
		}
	}
	
	//Disable on object collision in the air
	if(!Ground) OnObject = false;
	
	

}