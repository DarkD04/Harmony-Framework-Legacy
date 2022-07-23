function ShieldNormal(){
	//If shield is correct
	if(Shield = S_NORMAL){
		//Create shield if it doesn't exist
		if(!instance_exists(NormalShield)) instance_create_depth(x, y, depth-10, NormalShield);
		

	}else instance_destroy(NormalShield);
}