function BubbleShieldPerform(){
	show_debug_message(string(CanLand))
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
		
		//Trigger the fire shield
		if(ShieldState = 0 && Input.ActionPress && Jumping && LandTimer = 0){
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
			if(Ground && !Land){
				LandTimer = 4;
				Ground = false;
				Jumping = true;
				JumpFlag = false;
				GroundAngle = GetAngle();
				PlaySound(BubbleBounce);
				XSpeed -= 7.5 * dsin(GroundAngle)
				YSpeed -= 7.5 * dcos(GroundAngle)
				ShieldState = 0;
				PlayerCollisionGround();
			}
		}
		//Reset the flag when not jumping
		if(!Jumping) ShieldState = 0;
		
	}else{
		instance_destroy(BubbleShield);
	}
}