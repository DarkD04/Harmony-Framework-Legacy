function PlayerNormal(){
	//Wall stopper
	if(CheckWall(-WallRadiusW-1, WallRadiusH) && GroundSpeed < 0){
		GroundSpeed = 0;	
		if(!Ground) XSpeed = 0;
	}
		
	if(CheckWall(WallRadiusW+1, WallRadiusH) && GroundSpeed > 0){
		GroundSpeed = 0;
		if(!Ground) XSpeed = 0;
	}
	
	//Normal animation
	if(!Jumping && !Roll && State = noone && Ground){		
		//Standing animation
		PlayerAnimation(ANIM_STAND, 1);
		
		//Walking
		if(GroundSpeed != 0) PlayerAnimation(ANIM_WALK, floor(max(0, 8-abs(GroundSpeed))));
		
		//Running
		if(abs(GroundSpeed) >= 6) PlayerAnimation(ANIM_RUN, floor(max(0, 4-abs(GroundSpeed))));
	}
}