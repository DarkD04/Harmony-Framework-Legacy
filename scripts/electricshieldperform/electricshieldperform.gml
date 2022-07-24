function ElectricShieldPerform(){
	//If shield is correct
	if(Shield = S_ELECTRIC){
		//Create shield if it doesn't exist
		if(!instance_exists(ElectricShield)) instance_create_depth(x, y, depth-10, ElectricShield);
		
		//Shield code
		with(ElectricShield){
			//Change animation speed
			image_speed = 0.8;
			
			//Change order
			depth = Player.depth - 10;
			if(image_index >= 15) depth = Player.depth + 10;
		}
		//Double jump!
		if(Jumping && !Ground && ShieldState = 0 && Input.ActionPress){
			JumpFlag = false;
			YSpeed = -5.5;
			ShieldState = 1;
			PlaySound(ElectricShieldJump);
			
			//Create sparkles
			for(var i = 0; i < 4; i++){
				var Sparkles = instance_create_depth(x, y, depth, ElectricSparks);	
				Sparkles.Angle += 90*i;
			}
		}
		
		//Reset shield state when on ground
		if(ShieldState = 1 && Ground){
			ShieldState = 0;	
		}
		
		//The ring magnet code
		with(Ring){
			if(collision_rectangle(floor(x)-64, floor(y)-64, floor(x)+64, floor(y)+64, Player, false, false)){
				Magnetize = true;
				Shattered = true;
			}
			//Changing ring speeds depending on player's position
			if(Magnetize){
				if(x >= Player.x){
					if(XSpeed < 0) XSpeed -= 0.1875 else XSpeed -= 0.75
				}
				
				if(x <= Player.x){
					if(XSpeed > 0) XSpeed += 0.1875 else XSpeed += 0.75
				}
				
				if(y >= Player.y){
					if(XSpeed < 0) YSpeed -= 0.1875 else YSpeed -= 0.75
				}
				
				if(y <= Player.y){
					if(YSpeed > 0) YSpeed += 0.1875 else YSpeed += 0.75
				}
			}
			
		}

	}else{
		instance_destroy(ElectricShield);
		with(Ring){
			Magnetize = false;
		}
	}
}