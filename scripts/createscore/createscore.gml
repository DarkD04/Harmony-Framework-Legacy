function CreateScore(){
	//Crate score object
	var Object = instance_create_depth(x, y, depth-1, ScoreObject);
	
	//Add score depending on the chain
	if(StageSetup.BadnikChain = 1){
		Object.image_index = 0;
		Game.Score += 100;
	}
	
	if(StageSetup.BadnikChain = 2){
		Object.image_index = 1;
		Game.Score += 200;
	}
	
	if(StageSetup.BadnikChain = 3){
		Object.image_index = 2;
		Game.Score += 500;
	}
	
	if(StageSetup.BadnikChain >= 4 && StageSetup.BadnikChain <= 15){
		Object.image_index = 3;
		Game.Score += 1000;
	}
	
	if(StageSetup.BadnikChain >= 16){
		Object.image_index = 4;
		Game.Score += 10000;
	}
}