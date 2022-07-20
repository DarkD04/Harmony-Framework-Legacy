/// @description Script

	//Culling
	Destructable();
	
	//Reset the flag
	CollisionFlag = true;
	
	//For breakable walls
	if(BreakableType = "Breakable Wall"){
		//Change collision flag
		if(Player.Roll && abs(Player.GroundSpeed) >= 1 && Player.Ground)
			CollisionFlag = false;	
		
		//Destroy the wall
		if(PlayerCheckObject(C_MAIN) && !CollisionFlag){
			instance_destroy(id);	
		}
	}
	
	//For breakable blocks
	if(BreakableType = "Breakable Block"){
		//Change collision flag
		if(Player.Roll && Player.Ground && PlayerCheckObject(C_BOTTOM) || Player.Jumping && Player.YSpeed >= 0)
			CollisionFlag = false;	
		
		//Destroy the wall
		if(PlayerCheckObject(C_BOTTOM) && !CollisionFlag){
			instance_destroy(id);	
		}
	}