/// @description Script
	//Culling
	if(!Destroyed || Destroyed && Age > 50)
		Destructable(32, 32);
		
	//Reset collision flag
	CollisionFlag = true;
	
	//Change collision flag
	if(Player.State = ST_ROLL || Player.Jumping && Player.YSpeed >= 0 || Player.State = ST_GLIDE || Destroyed)
		CollisionFlag = false;	
		
	//Destroy the monitor
	if(PlayerCheckObject(C_BOTTOM) && !CollisionFlag && !Destroyed){
		Player.YSpeed = abs(Player.YSpeed)*-1;
		Destroyed = true;
		IconY = floor(y)-4;
		IconTargetY = floor(y)-48;
		Bumped = true
		YSpeed = -2;
		CreateEffect(x, y-3, sprExplosion00, 0.2);
		PlaySound(Destroy);
	}
	
	//Change monitor sprite
	if(!Destroyed) image_index = 0; else image_index = 1;
	
	//Add age timer if monitor is destroyed
	if(Destroyed) Age += 1;
	
	//Move monitor icon
	if(Destroyed && Age > 4) IconY = lerp(IconY, IconTargetY, 0.1);
	
	//Get the reward
	if(Age = 50) event_user(0);
	
	//Bumping and physics
	if(!Bumped && !Destroyed && PlayerCheckObject(C_TOP)){
		Bumped = true
		YSpeed = -2;
	}
	
	//When bumped
	if(Bumped){
		//Speed
		y += YSpeed;
		YSpeed += 0.2;
		
		//Collision with ground
		while(ObjectCheckTerrain(-16, 0, 16, 15)){
			y -= 1;
			Bumped = false;
		}
	}