/// @description 
	x = floor(Player.x);
	y = floor(Player.y);
	
	visible = true;
	if(!Player.Roll && !Player.Ground || Player.Ground) Direction = Player.Direction;
	image_xscale = Direction;
	
	switch(Player.Animation){
		case Player.ANIM_STAND:
			PlayerAnimation(sprTailsD0, 6);
			image_angle = 0;
			break;
			
		case Player.ANIM_LEDGE1:
			PlayerAnimation(sprTailsD2, 6);
			image_angle = 0;
			break;
			
		case Player.ANIM_LEDGE2:
			PlayerAnimation(sprTailsD2, 6);
			image_angle = 0;
			break;
			
		case Player.ANIM_SKID:
			PlayerAnimation(sprTailsD2, 6);
			image_angle = 0;
			break;
			
		case Player.ANIM_PUSH:
			PlayerAnimation(sprTailsD0, 6);
			image_angle = 0;
			break;
			
		case Player.ANIM_LOOKUP:
			PlayerAnimation(sprTailsD0, 6);
			image_angle = 0;
			break;
			
		case Player.ANIM_LOOKDOWN:
			PlayerAnimation(sprTailsD0, 6);
			image_angle = 0;
			break;
			
		case Player.ANIM_SPINDASH:
			PlayerAnimation(sprTailsD2, 3);
			image_angle = 0;
			break;
			
		case Player.ANIM_ROLL:
			PlayerAnimation(sprTailsD1, 3);
			break;
			
		default:
			visible = false
			break;
	}

	//Change the angle
	if(sprite_index = sprTailsD1){
		if(Player.Ground){
			image_angle = Player.GroundAngle;
			if(Player.GroundSpeed != 0) Direction = sign(Player.GroundSpeed);
		}else{
			if(Player.Direction = 1) image_angle = darctan2(Player.YSpeed, -Player.XSpeed)-180;
			if(Player.Direction = -1) image_angle = darctan2(-Player.YSpeed, Player.XSpeed)-180;
		}
	}
	AnimationSystem();
	PlayerRecording()