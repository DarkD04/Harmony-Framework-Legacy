function PlayerPeformJump(){
	//Reset jump flag
	if(Ground && Jumping) Jumping = false;
		
	//Make player jump
	if(!Jumping && Input.abcPress && CanJump && Ground)
	{
		PlayerAnimation(ANIM_ROLL, floor(max(0, 4-abs(GroundSpeed))));
		PlaySound(Jump);
		XSpeed += JumpSpeed * -dsin(GroundAngle);
		YSpeed += JumpSpeed * -dcos(GroundAngle);
		Jumping = true;
		Roll = false;
		JumpFlag = true;
		Ground = false;
	}
	
	//Low jump
	if(JumpFlag && Jumping && !Input.ABC && YSpeed <= -4)
	{
		YSpeed = -4;
		JumpFlag = false;
			
	}
}