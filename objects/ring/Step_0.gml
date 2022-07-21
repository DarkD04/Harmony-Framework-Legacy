/// @description Script

	//Sync animations
	image_index = Game.ObjectTimer/6;
	
	//Culling
	if(!Shattered)Destructable(32, 32);
	
	//Collect the ring
	if(PlayerCheckObject(C_MAIN) && Player.InvincibleTimer <= 100){
		Game.Rings += 1;
		CreateEffect(x, y, sprRingSpark, 0.2);
		PlaySound(Rings);
		instance_destroy(id);
	}
	
	if(Shattered){
		//Update speed
		x += XSpeed;
		y += YSpeed;
		
		//Gravity
		YSpeed += 0.1;
		
		//Left collision
		while(ObjectCheckTerrainPoint(-7, 0) && XSpeed < 0){
			x += 1;	
			XSpeed = XSpeed *-1;
		}
		
		//Left collision
		while(ObjectCheckTerrainPoint(7, 0) && XSpeed > 0){
			x -= 1;	
			XSpeed = XSpeed *-1;
		}
		//Top collision
		while(ObjectCheckTerrainPoint(0, -7) && YSpeed < 0){
			y += 1;	
			YSpeed = YSpeed *-1;
		}
		
		//Bottom collision
		while(ObjectCheckTerrainPoint(0, 7) && YSpeed > 0){
			y -= 1;	
			YSpeed = YSpeed *-1;
		}
		
		//Update ring age
		Age += 1
		
		//Destroy
		if(Age > 200) instance_destroy();
	}