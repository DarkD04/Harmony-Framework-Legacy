function StateKnuxClimb(){
	//Attach to the walls
	if(State = ST_GLIDE){
		if(Direction = 1 && CheckWall(WallRadiusW+1, WallRadiusH) || Direction = -1 && CheckWall(-WallRadiusW-1, WallRadiusH)){
			PlayerAnimation(ANIM_CLIMB, -1);
			State = ST_CLIMB;	
			PlaySound(Snap);
		}
	}
	
	//Climbing!!
	if(State = ST_CLIMB){
		//Change animation
		PlayerAnimation(ANIM_CLIMB, -1);
		
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
		
		//Get movement value
		var Movement = Input.Down - Input.Up;
		
		//Climb on the ledge
		if(Direction = 1 && !CheckWall(WallRadiusW+6, WallRadiusH) && Movement = -1 || Direction = -1 && !CheckWall(-WallRadiusW-6, WallRadiusH) && Movement = -1){
			x += (WallRadiusW+2) * Direction;
			while(!CheckTerrain(-HitboxW, HitboxH) && !CheckTerrain(HitboxW, HitboxH)) y += 1;
			while(CheckTerrain(-HitboxW, HitboxH) || CheckTerrain(HitboxW, HitboxH)) y -= 1;
			PlayerAnimation(ANIM_CLIMBLEDGE, 5, 4);
			Camera.Mode = 1;
			State = ST_LEDGECLIMB;	
		}
		
		//Move up and down
		y += Movement;
		AniSubImage += Movement / 5;
		
		//Jump!
		if(Input.ActionPress && Animation = ANIM_CLIMB){
			PlayerAnimation(ANIM_ROLL, 4);
			PlaySound(Jump);
			State = ST_NONE;
			Jumping = true;
			Direction *= -1;
			XSpeed = 4*Direction;
			YSpeed = -4;
		}
		
		//Fall when not on walls
		if(Direction = 1 && !CheckWall(WallRadiusW+1, WallRadiusH) && Movement = 1 || Direction = -1 && !CheckWall(-WallRadiusW-1, WallRadiusH) && Movement = 1){
			YSpeed = 1;
			State = ST_KNUXFALL
		}
		
		//Reset the state on the ground
		if(Ground) State = ST_NONE;
	}
}