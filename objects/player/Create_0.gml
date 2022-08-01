/// @description Values
	
	//Basic values
	Character = Game.Character;
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
	JumpSpeed = 6.5;
	
	//Flags
	Ground = true;
	Land = true;
	LandTimer = 0;
	PlatformCheck= true;
	CanMove = true;
	Skid = false;
	ChangeDirection = true;
	InputInterrupt = false;
	CanCollide = true;
	OnObject = false;
	CanLand = true;
	WallStopper = false;
	Attacking = false;
	
	//Hitbox
	HitboxW = 9;
	HitboxH = 19;
	WallRadiusW = 10;
	WallRadiusH = 0;
	PrevHitboxH = 0;
	
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
	Hurt = H_NONE;
	DeathTimer = 0;
	Shield = S_NONE;
	ShieldState = 0;
	SpeedTimer = 0;
	TailsTimer = 0;
	TailsGravity = 0;
	Underwater = false;
	GlideSpeed = 0;
	GlideAngle = 90;
	GlideDirection = 1;
	
	//Other
	InvincibleTimer = 0;
	ControlLock = 0;
	PlaneIndex = 0;
	Direction = 1;
	Mode = 0;
	XDir = 0;
	YDir = 1;
	CeilingSide = 0;
	
	//Animation
	PlayerAnimationList();
	AnimationSystemSetup()
	PlayerAnimation(ANIM_STAND, 4)
	
	
	//Create camera
	instance_create_depth(x, y, depth, Camera);
	
	//Recording
	PlayerRecordSetup();
	