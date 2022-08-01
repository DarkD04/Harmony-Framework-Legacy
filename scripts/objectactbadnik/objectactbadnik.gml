function ObjectActBadnik(){
	//When player collides while attacking
	if(PlayerCheckObject(C_MAIN) && Player.Attacking || PlayerCheckObject(C_MAIN) && Player.Invincible){
		//Handling animals
		var Animal = instance_create_depth(x, y, depth, Animals);
		
		//The rest
		StageSetup.BadnikChain += 1;
		Player.YSpeed = abs(Player.YSpeed) * -1;
		PlaySound(Destroy);
		CreateScore();
		CreateEffect(x, y, sprExplosion00, 0.2);
		instance_destroy();
	}
	
	//When player collides while not attacking
	if(PlayerCheckObject(C_MAIN) && !Player.Attacking)	Player.Hurt = H_KNOCKOUT;
}