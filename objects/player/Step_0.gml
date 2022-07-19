/// @description Execute scripts
	
	//Reset landing flag
	Land = false;
	
	//Steps
	Steps = 1 + abs(round(GroundSpeed/16));
	
	repeat(Steps){
		//Player hitbox
		PlayerHitbox();
	
		//This is where player moves
		PlayerMovement();
		
		//Collision stuff when player is in air
		if(!Ground) PlayerCollisionAirborn();
		
		//Handle ground collision
		if(Ground) PlayerCollisionGround();
		
		//Get ground angle
		if(Ground) GroundAngle = GetAngle(); else GroundAngle = 0;
		
		//When player is falling
		PlayerFallCases();
		
		//Stop player's speed when coliding with wall(small fix)
		PlayerWallStopper();
	}
	
	//Controlling the player
	PlayerControl();
	
	//Player normal
	PlayerNormal();
	
	//Handle jump
	PlayerPeformJump();
	
	//Handle roll
	PlayerPerformRoll();
	
	//Player state lists
	PlayerStateList();
	
	//Handle hurt
	PlayerHandleHurt();
	
	//Handle skid
	PlayerPerformSkid();
	
	//Player's visual angle change
	PlayerVisualAngle();
	
	