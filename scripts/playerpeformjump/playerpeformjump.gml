function PlayerPeformJump(){
	//Reset jump flag
	if(Ground && Jumping && CanLand) Jumping = false;
		
	//Make player jump
	if(!Jumping && Input.ActionPress && Ground && State = ST_NONE || !Jumping && Input.ActionPress && Ground && State = ST_KNUXSLIDE)
	{
		PlayerAnimation(ANIM_ROLL, floor(max(0, 4-abs(GroundSpeed))));
		PlaySound(Jump);
		XSpeed += JumpSpeed * -dsin(GroundAngle);
		YSpeed += JumpSpeed * -dcos(GroundAngle);
		Jumping = true;
		Roll = false;
		JumpFlag = true;
		Ground = false;
		Land = false;
	}
	
	//Attacking
	if(Jumping){
		Attacking = true;
	}
	
	//Low jump
	if(JumpFlag && Jumping && !Input.Action && YSpeed <= -4/(Underwater+1))
	{
		YSpeed = -4/(Underwater+1);
		JumpFlag = false;
			
	}
}