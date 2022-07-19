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
		
		//Pushing
		if(Movement = Direction && Direction = 1 && CheckWall(WallRadiusW+1, WallRadiusH) || Movement = Direction && Direction = -1 && CheckWall(-WallRadiusW-1, WallRadiusH)){
			Direction = Movement;
			PlayerAnimation(ANIM_PUSH, 10);
		}
	}
}