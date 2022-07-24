/// @description Execute scripts
	
	//Reset landing flag
	Land = false;
	CanLand = true;
	WallStopper = true;
	Attacking = false;
	
	//Steps
	Steps = 1 + abs(round(XSpeed/16)) + abs(round(YSpeed/16)) + (Ground ? 0 : 1);
	
	repeat(Steps){
		//Player hitbox
		PlayerHitbox();
		
		//This is where player moves
		PlayerMovement();
		
		if CeilingSide = 0 GroundAngle = 0;
		
		//Airborn wall collision
		PlayerWallCollision();
	
		//Player handle shields
		PlayerShieldList();
		
		//Handle collision with solid objects only
		HandleObjectCollision();
		
		//Collision stuff when player is in air
		if(!OnObject) PlayerCollisionAirborn();
	
		//Handle ground collision
		if(Ground && !OnObject) PlayerCollisionGround();
		
		//Get ground angle
		if(Ground && !OnObject || CeilingSide != 0) GroundAngle = GetAngle();
		
		//When player is falling
		PlayerFallCases();
		
		//Stop player's speed when coliding with wall(small fix)
		if(CeilingSide = 0)PlayerWallStopper();
	}
	
	//Controlling the player
	PlayerControl();
	
	//Player normal
	PlayerNormal();
	
	//Handle roll
	PlayerPerformRoll();
	
	//Player state lists
	PlayerStateList();
	
	//Handle jump
	PlayerPeformJump();
	
	//Handle hurt
	PlayerHandleHurt();
	
	//Handle skid
	PlayerPerformSkid();
	
	//Player's visual angle change
	PlayerVisualAngle();
	
	