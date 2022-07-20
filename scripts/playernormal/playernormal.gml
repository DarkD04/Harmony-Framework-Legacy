function PlayerNormal(){
	//Get input difference
	var Movement = Input.Right - Input.Left;
	
	//Normal animation
	if(!Jumping && !Roll && Ground && State = ST_NONE){		
		//Standing animation
		PlayerAnimation(ANIM_STAND, 1);
		
		//Walking
		if(GroundSpeed != 0) PlayerAnimation(ANIM_WALK, floor(max(0, 8-abs(GroundSpeed))));
		
		//Running
		if(abs(GroundSpeed) >= 6) PlayerAnimation(ANIM_RUN, floor(max(0, 4-abs(GroundSpeed))));
		
		//Max run
		if(abs(GroundSpeed) >= 12) PlayerAnimation(ANIM_PEELOUT, 1);
		
		//Pushing
		if(WallStopper = true && Movement = Direction && Direction = 1 && CheckWall(WallRadiusW+1, WallRadiusH) || Movement = Direction && Direction = -1 && CheckWall(-WallRadiusW-1, WallRadiusH)||
		WallStopper = true && Movement = Direction && Direction = 1 && ObjectCollision(0, -HitboxH+2, WallRadiusW+1, HitboxH-2) || Movement = Direction && Direction = -1 && ObjectCollision(-WallRadiusW-1, -HitboxH+2, 0, HitboxH-2)){
			Direction = Movement;
			PlayerAnimation(ANIM_PUSH, 10);
		}
		//if(ObjectCollision(0, -HitboxH+2, WallRadiusW, HitboxH-2))
		//Ledge (or balancing)
		if(!CheckTerrain(0, HitboxH+16) && !ObjectCollision(0, 0, 1, HitboxH+8, true) && GroundSpeed = 0 && GroundAngle = 0){
			//Right side
			if(!CheckTerrain(HitboxW, HitboxH+16) && !ObjectCollision(WallRadiusW-1, 0, WallRadiusW, HitboxH+8, true)){
				if Direction = 1 PlayerAnimation(ANIM_LEDGE1, 6);
				if Direction = -1 PlayerAnimation(ANIM_LEDGE2, 6);
			}
			
			//Left side
			if(!CheckTerrain(-HitboxW, HitboxH+16) && !ObjectCollision(-WallRadiusW, 0, -WallRadiusW-1, HitboxH+8, true)){
				if Direction = -1 PlayerAnimation(ANIM_LEDGE1, 6);
				if Direction = 1 PlayerAnimation(ANIM_LEDGE2, 6);
			}
			
		}
	}
}