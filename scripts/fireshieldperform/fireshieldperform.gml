function FireShieldPerform(){
	//If shield is correct
	if(Shield = S_FIRE){
		//Create shield if it doesn't exist
		if(!instance_exists(FireshieldFront)) instance_create_depth(x, y, depth-10, FireshieldFront);
		if(!instance_exists(FireshieldBack)) instance_create_depth(x, y, depth, FireshieldBack);
		
		//Make back shield visible
		FireshieldBack.visible = true;
		
		//Reset shield scale
		FireshieldFront.image_xscale = 1;
		
		//Reset sprite index
		FireshieldFront.sprite_index = sprFireshieldFront;
		FireshieldBack.sprite_index = sprFireshieldBack;
		
		//No shield underwater >:(
		if(Underwater) Shield = S_NONE;
		
		//Stop executing when not sonic
		if(Character != CHAR_SONIC || Invincible){
			ShieldState = 0;
			exit;
		}
		
		//Trigger the fire shield
		if(ShieldState = 0 && Input.ActionPress && Jumping){
			PlaySound(FireshieldDash);
			Camera.HorizontalLag = 12;
			XSpeed = 8 * Direction;
			YSpeed = 0;
			ShieldState = 1;
		}
		
		//Reset shield state
		if(State != ST_NONE) ShieldState = 0;
		
		//When its in next state
		if(ShieldState = 1){
			//Make back shield invisible when player is dashing
			FireshieldBack.visible = false;	
			
			//Turn shield direction
			if(GroundSpeed != 0) FireshieldFront.image_xscale = sign(GroundSpeed);
			if(GroundSpeed = 0) FireshieldFront.image_xscale = Direction;
			
			//Change front shield sprite into dashing
			FireshieldFront.sprite_index = sprFireshieldDash;
			FireshieldBack.sprite_index = sprFireshieldDash;
			
			//Reset the state
			if(Ground) ShieldState = 0;
		}

	}else{
		instance_destroy(FireshieldFront);
		instance_destroy(FireshieldBack);
	}
}