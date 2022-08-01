/// @description 
	x = floor(Player.x);
	y = floor(Player.y);
	
	visible = true;
	//if(!Player.Roll && !Player.Ground || Player.Ground || !Player.Ground && Player.Roll) Direction = Player.Direction;
	image_xscale = Direction;
	
	switch(Player.Animation){
		case Player.ANIM_STAND:
			Direction = Player.Direction;
			PlayerAnimation(sprTailsD0, 6);
			image_angle = 0;
			break;
			
		case Player.ANIM_LEDGE1:
			Direction = Player.Direction;
			PlayerAnimation(sprTailsD2, 6);
			image_angle = 0;
			break;
			
		case Player.ANIM_LEDGE2:
			Direction = Player.Direction;
			PlayerAnimation(sprTailsD2, 6);
			image_angle = 0;
			break;
			
		case Player.ANIM_SKID:
			Direction = Player.Direction;
			PlayerAnimation(sprTailsD2, 6);
			image_angle = 0;
			break;
			
		case Player.ANIM_PUSH:
			Direction = Player.Direction;
			PlayerAnimation(sprTailsD0, 6);
			image_angle = 0;
			break;
			
		case Player.ANIM_LOOKUP:
			Direction = Player.Direction;
			PlayerAnimation(sprTailsD0, 6);
			image_angle = 0;
			break;
			
		case Player.ANIM_LOOKDOWN:
			Direction = Player.Direction;
			PlayerAnimation(sprTailsD0, 6);
			image_angle = 0;
			break;
			
		case Player.ANIM_SPINDASH:
			Direction = Player.Direction;
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
			if(Direction = 1) image_angle = darctan2(Player.YSpeed, -Player.XSpeed)-180;
			if(Direction = -1) image_angle = darctan2(-Player.YSpeed, Player.XSpeed)-180;
		}
	}
	AnimationSystem();
	PlayerRecording()