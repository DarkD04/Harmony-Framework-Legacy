function PlayerHandleHurt(){
	//Macros for hurt
	#macro H_NONE 0
	#macro H_KNOCKOUT 1
	#macro H_DIE 2
	#macro H_DROWN 3
	
	//Can't hurt when invisible
	if(InvincibleTimer > 0 && Hurt != H_DROWN && Hurt != H_DIE) Hurt = H_NONE
	
	//Reset roll and jump flags
	if(Hurt != H_NONE){
		Roll = false;
		Jumping = false;
	}
	if(Hurt = H_KNOCKOUT && Hurt != H_DROWN && Hurt != H_DIE && InvincibleTimer > 0) Hurt = H_NONE;
	
	//Hurt with whield
	if(Hurt = H_KNOCKOUT && Hurt != H_DIE && Shield != S_NONE && InvincibleTimer = 0){
		PlaySound(Knockout);
		InvincibleTimer = 120;
		XSpeed = -2*Direction;
		if(!Underwater) YSpeed = -4; else YSpeed = -4/2;
		Ground = false;
		State = ST_HURT;
		Shield = S_NONE;
	}
	
	//Hurt with rings
	if(Hurt = H_KNOCKOUT && Hurt != H_DIE && Hurt != H_DROWN  && Game.Rings >= 1 && Shield = S_NONE && InvincibleTimer = 0){
		PlaySound(Ringloss);
		CreateRingloss(Game.Rings);
		InvincibleTimer = 120;
		XSpeed = -2*Direction;
		if(!Underwater) YSpeed = -4; else YSpeed = -4/2;
		Ground = false;
		State = ST_HURT;
		Game.Rings = 0;
	}
	
	//Die when theres no rings
	if(Hurt = H_KNOCKOUT && Hurt != H_DIE && Hurt != H_DROWN && Game.Rings = 0 && Shield = S_NONE && InvincibleTimer = 0 || Hurt != H_DIE && Hurt != H_DROWN && y > Camera.DestinationBottom + 32){
		PlaySound(Knockout);
		GroundSpeed = 0;
		XSpeed = 0;
		YSpeed = -7;
		Ground = false;
		Hurt = H_DIE;
	}
	
	//Handle death
	if(Hurt = H_DIE){
		//Change player layer
		depth = layer_get_depth("Utilities")+10;
		
		//Change camera mode
		Camera.Mode = -1;
		
		//Change flags
		CanMove = false;
		CanCollide = false;
		
		//Add gravity
		y += YSpeed;
		YSpeed += Gravity;
		
		//Change animation
		PlayerAnimation(ANIM_DIE, 1);
	}
	
	//Handle death
	if(Hurt = H_DROWN){
		//No music
		MusicObject.Fade = MusicFadeOut;
		MusicObject.FadeSpeed = 100;
			
		//Change player layer
		depth = layer_get_depth("Utilities")+10;
		
		//Change camera mode
		Camera.Mode = -1;
		
		//Change flags
		CanMove = false;
		CanCollide = false;
		
		//Add gravity
		y += YSpeed;
		YSpeed += Gravity;
		
		//Change animation
		PlayerAnimation(ANIM_DROWN, 1);
	}
	
	//Try to restart the room when dying
	if(Hurt = H_DIE || Hurt = H_DROWN){
		//Get camera position
		var BottomScreen
		BottomScreen = camera_get_view_y(view_camera[view_current]) + Game.ScreenHeight;
		
		//Add death timer
		if(y > BottomScreen + 16)
			DeathTimer += 1;
			
		//Fade out
		if(DeathTimer > 32){
			FadeManager.FadeMode = 1;
			FadeManager.FadeSpeed = 5;
			MusicObject.Fade = MusicFadeOut;
			MusicObject.FadeSpeed = 2;
		}
		
		//Restart
		if(DeathTimer > 90) room_restart();
						
	}
	
	//Subtract invincibility timer
	if(State != ST_HURT) InvincibleTimer = max(InvincibleTimer-1, 0); 
	
	//die debug lol
	if(keyboard_check_pressed(ord("H"))) Hurt = H_KNOCKOUT;
}