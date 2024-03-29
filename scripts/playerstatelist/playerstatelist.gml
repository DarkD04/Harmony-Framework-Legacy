function PlayerStateList(){
	//Reset flags
	InputInterrupt = false
	ChangeDirection = true;
	CanJump = true;
	CanRoll = true;
	CanMove = true;
	Land = false;
	CanLand = true;
	WallStopper = true;
	Attacking = false;
	
	if(Roll) State = ST_NONE;
	
	//Macros for states
	#macro ST_NONE 0
	#macro ST_JUMP 1
	#macro ST_ROLL 2
	#macro ST_LOOKUP 3
	#macro ST_LOOKDOWN 4
	#macro ST_SPINDASH 5
	#macro ST_HURT 6
	#macro ST_SPRING 7
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