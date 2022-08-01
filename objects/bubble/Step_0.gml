/// @description Script
	switch(Type){
		case 0: FrameCap = 3; break;
		case 1: FrameCap = 5; break;
		case 2: FrameCap = 7; break;
	}
	
	//Movement
	y -= 0.5;
	x = xstart + 3*dsin(Angle)
	
	//Add and modulate angle
	Angle = (Angle + 2) mod 360;
	
	//Destroy outside of window or above water horizon
	if(!OnScreen() || y < Water.y) instance_destroy();
	
	//Utilize animation system
	if(AniSubImage < FrameCap-1) AnimationSystem();
	
	//Suck it!
	if(PlayerCheckObject(C_MAIN) && AniSubImage >= image_number-1){
		with(Player){
			XSpeed = 0;
			YSpeed = 0;
			State = ST_NONE;
			Jumping = false;
			Roll = false;
			PlayerAnimation(ANIM_BREATHE, 1);
		}
		PlaySound(Breathe);
		instance_destroy();	
	}
	