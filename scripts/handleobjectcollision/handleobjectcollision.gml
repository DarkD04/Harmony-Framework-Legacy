function HandleObjectCollision(){
	PlayerHitbox();
	
	var ObjectID = collision_rectangle(floor(x)-WallRadiusW, floor(y)-HitboxH, floor(x)+WallRadiusW, floor(y)+HitboxH, CollisionObject, false, false)

	//(ObjectID.x - PlayerX) > abs(ObjectID.y - PlayerY - 4)
	if(ObjectID){
		var CenterX = ObjectID.bbox_left + (ObjectID.bbox_right - ObjectID.bbox_left)/2;
		var CenterY = ObjectID.bbox_top + (ObjectID.bbox_bottom - ObjectID.bbox_top)/2;
		
		if(x >= CenterX && abs(CenterX - x + WallRadiusW) > abs(CenterY - y - 4) ||
		x < CenterX && abs(CenterX - x - WallRadiusW) > abs(CenterY - y - 4)){
			//Left Wall
			if(GroundSpeed >= -2){
				while(ObjectCollision(0, -HitboxH+3, WallRadiusW, HitboxH-3)){
					x -= 1;
				}
			}
	
			//Right Wall
			if(GroundSpeed <= 2){
				while(ObjectCollision(-WallRadiusW, -HitboxH+3, 0, HitboxH-3)){
					x += 1;
				}
			}
			
			//Wall stopper
			if(ObjectCollision(0, -HitboxH+3, WallRadiusW+1, HitboxH-3) && GroundSpeed > 0 && WallStopper){
				GroundSpeed = 0;
				XSpeed = 0;
				GlideSpeed = 2;
			}
			
			if(ObjectCollision(0, -HitboxH+3, -WallRadiusW-1, HitboxH-3) && GroundSpeed < 0 && WallStopper){
				GroundSpeed = 0;
				XSpeed = 0;
				GlideSpeed = 2;
			}
		}
	}
	
	//Ceiling collision
	while(ObjectCollision(-WallRadiusW, -HitboxH+min(YSpeed/3, 0), WallRadiusW, 0) && YSpeed < 0){
		y+=1;
		YSpeed = 0;
		TailsGravity = 1;
	}
	
	//Landing
	if(ObjectCollision(-WallRadiusW, 0, WallRadiusW, HitboxH+max(YSpeed/2, 0), true) && !OnObject && YSpeed >= 0 && State != ST_CLIMB && State != ST_LEDGECLIMB){
		if(CanLand)Jumping = false
		Roll = false;
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