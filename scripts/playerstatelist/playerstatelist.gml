function PlayerStateList(){
	//Reset flags
	InputInterrupt = false
	ChangeDirection = true;
	CanJump = true;
	CanRoll = true;
	CanMove = true;
	
	if(Roll || Jumping) State = ST_NONE;
	
	//Macros for states
	#macro ST_NONE 0
	#macro ST_LOOKUP 1
	#macro ST_LOOKDOWN 2
	#macro ST_SPINDASH 3
	#macro ST_HURT 4
	#macro ST_SPRING 5
	#macro ST_PEELOUT 10
	#macro ST_FLY 11
	#macro ST_GLIDE 12
	#macro ST_CLIMB 13
	#macro ST_LEDGECLIMB 14
	#macro ST_KNUXFALL 15
	#macro ST_KNUXSLIDE 16
	
	//Sonic state scripts
	StatePeelOut();
	
	//Tails state scripts
	StateFly();
	
	//Knux player scripts
	StateKnuxGlide();
	StateKnuxClimb();
	StateKnuxLedge();
	StateKnuxFalling();
	StateKnuxSlide();
	
	//State scripts (All characters)
	PlayerNormal();
	PlayerPeformJump();
	StateLookUp();
	StateLookDown();
	PlayerPerformRoll();
	StateSpindash();
	StateHurt();
	StateSpring();
	
}