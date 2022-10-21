function BubbleShieldPerform(){
	//If shield is correct
	if(Shield = S_BUBBLE){
		//Create shield if it doesn't exist
		if(!instance_exists(BubbleShield)){
			instance_create_depth(x, y, depth-10, BubbleShield);
			
			//Set animation speed
			BubbleShield.image_speed = 1.2;
		}
		
		//Reset animation
		if(ShieldState = 0 && BubbleShield.image_index = 0){
			BubbleShield.sprite_index = sprBubbleShield;
			BubbleShield.image_speed = 1.2;
		}
		
		//Reset air timer
		Air = 0;
		
		//Stop executing when not sonic
		if(Character != CHAR_SONIC || Invincible){
			ShieldState = 0;
			exit;
		}
		
		//Trigger the fire shield
		if(ShieldState = 0 && Input.ActionPress && Jumping){
			BubbleShield.sprite_index = sprBubbleShieldBounce;
			BubbleShield.image_speed = 0.5;
			PlaySound(BubbleBounce);
			XSpeed = 0;
			YSpeed = 8;
			ShieldState = 1;
		}
		
		//When its in next state
		if(ShieldState = 1){
			BubbleShield.image_index = min(BubbleShield.image_index, BubbleShield.image_number/2);
			CanLand = false;
			CanJump = false;
			CanRoll = false;
			if(Ground){
				LandTimer = 4;
				Ground = false;
				Jumping = true;
				JumpFlag = false;
				GroundAngle = GetAngle();
				PlaySound(BubbleBounce);
				if(!Underwater){
					XSpeed -= (7.5 * dsin(GroundAngle));
					YSpeed -= (7.5 * dcos(GroundAngle));
				}else{
					XSpeed -= (7.5/2) * dsin(GroundAngle);
					YSpeed -= (7.5/2) * dcos(GroundAngle);
				}
				ShieldState = 0;
			}
		}
		//Reset the flag when not jumping
		if(!Jumping) ShieldState = 0;
		
	}else{
		instance_destroy(BubbleShield);
	}
}