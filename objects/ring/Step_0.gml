/// @description Script

	//Sync animations
	image_index = Game.ObjectTimer/6;
	
	//Culling
	Destructable(32, 32);
	
	//Collect the ring
	if(PlayerCheckObject(C_MAIN)){
		Game.Rings += 1;
		CreateEffect(x, y, sprRingSpark, 0.2);
		PlaySound(Rings);
		instance_destroy(id);
	}