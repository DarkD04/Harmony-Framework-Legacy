/// @description Scripts

	if(PlayerCheckObject(C_MAIN)){
		switch(SwapTo){
			case "Plane A": Player.PlaneIndex = 0; break;
			case "Plane B": Player.PlaneIndex = 1; break;
			case "Plane A to B": if(Player.GroundSpeed > 0) Player.PlaneIndex = 1; else Player.PlaneIndex = 0; break;
			case "Plane B to A": if(Player.GroundSpeed > 0) Player.PlaneIndex = 0; else Player.PlaneIndex = 1; break;
		}
	}