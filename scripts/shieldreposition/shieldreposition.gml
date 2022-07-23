function ShieldReposition(){
	//This is a fix for shield reposition when player is positioned on stuff such as moving platform
	if(instance_exists(NormalShield)){
		//Position the shield
		NormalShield.x = floor(x);
		NormalShield.y = floor(y);
	}
	
	if(instance_exists(FireshieldBack) && instance_exists(FireshieldFront)){
		//Position the shield
		FireshieldFront.x = floor(x);
		FireshieldFront.y = floor(y);
		
		FireshieldBack.x = floor(x);
		FireshieldBack.y = floor(y);
	}
}