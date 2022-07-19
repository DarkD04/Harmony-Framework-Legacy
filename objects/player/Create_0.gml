/// @description Values
	
	//Basic values
	Character = CHAR_SONIC;
	XSpeed = 0;
	YSpeed = 0;
	GroundSpeed = 0;
	GroundAngle = 0;
	VisualAngle = 0;
	Steps = 1;
	
	//Physics values
	Acceleration = 0.046875
	Deceleration = 0.5
	Friction = 0.046875
	TopSpeed = 6
	Gravity = 0.21875
	SlopeInfluence = 0.125
	RollUp = 0.078125
	RollDown = 0.3125
	JumpSpeed = 6.5;
	
	//Flags
	Ground = false;
	Land = false;
	PlatformCheck= true;
	CanMove = true;
	ChangeDirection = true;
	InputInterrupt = false;
	
	//Hitbox
	HitboxW = 9;
	HitboxH = 19;
	WallRadiusW = 10;
	WallRadiusH = 0;
	
	//Angle sensors
	PointX[0] = x;
	PointY[0] = y;
	PointX[1] = x;
	PointY[1] = y;
	
	//States
	State = ST_NONE;
	Jumping = false;
	JumpFlag = false;
	CanJump = true;
	Roll = false;
	CanRoll = true;
	SpindashRev = 0;
	PeeloutRev = 0;
	
	//Other
	ControlLock = 0;
	PlaneIndex = 0;
	Direction = 1;
	Mode = 0;
	XDir = 0;
	YDir = 1;
	
	//Animation
	PlayerAnimationList();
	Animation = 0;
	AnimationToBeSet = 0;
	AniSubImageDurationTimer = 0;
	AniSubImageDurationSet = 0;
	AniSubImageNumber = 0;
	AniSubImage = 0;
	AniLoop = true;
	AniLoopStart = 1;
	PlayerAnimation(ANIM_STAND, 4)
	
	//Create camera
	instance_create_depth(x, y, depth, Camera);