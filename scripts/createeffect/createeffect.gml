function CreateEffect(X, Y, Sprite, AnimSpeed){
	//Create and get the object
	var Object = instance_create_depth(X, Y, depth-1, Effect);
	
	//Set the sprite and animation speed
	Object.sprite_index = Sprite;
	Object.image_speed = AnimSpeed;
}