function PlayerStateList(){
	//Reset flags
	InputInterrupt = false
	ChangeDirection = true;
	CanJump = true;
	CanRoll = true;
	
	if(Roll || Jumping) State = ST_NONE;
	
	//Macros for states
	#macro ST_NONE 0
	#macro ST_LOOKUP 1
	#macro ST_LOOKDOWN 2
	#macro ST_SPINDASH 3
	#macro ST_HURT 4
	#macro ST_SPRING 5
	#macro ST_VICTORY 6
	#macro ST_PEELOUT 10
	
	//State scripts (All characters)
	StateLookUp();
	StateLookDown();
	StateSpindash();
	StateHurt();
	StateSpring();
	
	//Sonic state scripts
	StatePeelOut();
}