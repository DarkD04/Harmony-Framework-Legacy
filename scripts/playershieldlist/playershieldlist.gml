function PlayerShieldList(){
	//Shield macros
	#macro S_NONE 0
	#macro S_NORMAL 1
	#macro S_ELECTRIC 2
	#macro S_FIRE 3
	#macro S_BUBBLE 4
	
	//Normal shield
	ShieldNormal();
	
	//Fire shield
	FireShieldPerform();
	
	//Electric shield
	ElectricShieldPerform();
	
	//Bubble shield
	BubbleShieldPerform();
	
	//Reset shield state if not sonic
	if(Character != CHAR_SONIC) ShieldState = 0;
}