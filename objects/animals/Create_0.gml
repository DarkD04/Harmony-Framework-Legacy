/// @description Values
	//Animal macros
	#macro A_FLICKY 0
	#macro A_POCKY 1
	#macro A_CUCKY 2
	#macro A_RICKY 3
	#macro A_PECKY 4
	#macro A_ROCKY 5
	#macro A_PICKY 6
	
	//Randomize the animal
	RandomAnimal = random(array_length(StageSetup.AnimalArray));
	
	//Flicky values for different type
	AnimalType = StageSetup.AnimalArray[RandomAnimal];
	AnimalSprite = [sprFlicky, sprPocky, sprCucky, sprRicky, sprPecky, sprRocky, sprPicky];
	GravityForce = [0.09375, 0.21875, 0.09375, 0.21875, 0.21875, 0.21875, 0.21875];
	JumpForce = [4, 4, 3, 3.5, 3, 1.5, 3]
	Acceleration = [3, 2, 2, 2.5, 1.5, 1.25, 1.75];
	
	//Change sprite
	sprite_index = AnimalSprite[AnimalType];
	
	//When creating
	YSpeed = -4;
	Gravity = 0.21875;
	Direction = 0;
	Triggered = false;