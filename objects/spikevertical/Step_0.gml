/// @description Script

	//Bottom spike
	if(PlayerCheckObject(C_BOTTOM) && Player.Ground && image_yscale > 0){
		Player.Hurt = H_KNOCKOUT	
	}
	
	//Top spike
	if(PlayerCheckObject(C_TOP) && !Player.Ground && image_yscale < 0){
		Player.Hurt = H_KNOCKOUT	
	}