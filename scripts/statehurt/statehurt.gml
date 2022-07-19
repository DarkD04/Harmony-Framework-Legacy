function StateHurt(){
	if(State = ST_HURT){
		//Play animation
		PlayerAnimation(ANIM_HURT, 4);
		
		//Change flag
		InputInterrupt = true;
		ChangeDirection = false;
		
		//Reset when grounded
		if(Ground){
			State = ST_NONE;
			GroundSpeed = 0;
		}
	}
}