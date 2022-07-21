/// @description Script

	//Left spike
	if(PlayerCheckObject(C_LEFT) && Player.GroundSpeed <= 0 && image_xscale > 0){
		Player.Hurt = H_KNOCKOUT	
	}
	
	//Right spike
	if(PlayerCheckObject(C_RIGHT) && Player.GroundSpeed >= 0  && image_xscale < 0){
		Player.Hurt = H_KNOCKOUT	
	}