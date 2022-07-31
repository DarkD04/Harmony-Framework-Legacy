function StateKnuxLedge(){
	if(State = ST_LEDGECLIMB){
		//Reset speeds
		XSpeed = 0;
		YSpeed = 0;
		GroundSpeed = 0;
		
		//Flags
		CanMove = false;
		InputInterrupt = true;
		CanRoll = false;
		CanJump = false;
		Attacking = true;
		while(!CheckTerrain(-HitboxW, HitboxH) && !CheckTerrain(HitboxW, HitboxH)) y += 1;
		while(CheckTerrain(-HitboxW, HitboxH) || CheckTerrain(HitboxW, HitboxH)) y -= 1;
			
		//Reset the state when animation is over
		if(AniSubImage = AniSubImageNumber-1) {
			State = ST_NONE;
			Camera.Mode = 0;
		}
	}
}