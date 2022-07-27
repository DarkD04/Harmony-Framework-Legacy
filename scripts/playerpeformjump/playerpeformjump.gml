function PlayerPeformJump(){
	//Reset jump flag
	if(Ground && Jumping && CanLand) Jumping = false;
		
	//Make player jump
	if(!Jumping && Input.ActionPress && CanJump && Ground && State = ST_NONE)
	{
		PlayerAnimation(ANIM_ROLL, floor(max(0, 4-abs(GroundSpeed))));
		PlaySound(Jump);
		Ground = false;
		Land = false;
		XSpeed += JumpSpeed * -dsin(GroundAngle);
		YSpeed += JumpSpeed * -dcos(GroundAngle);
		Jumping = true;
		Roll = false;
		JumpFlag = true;
	}
	
	//Attacking
	if(Jumping) Attacking = true;
	
	//Low jump
	if(JumpFlag && Jumping && !Input.Action && YSpeed <= -4)
	{
		YSpeed = -4;
		JumpFlag = false;
			
	}
}