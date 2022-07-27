/// @description Swing startup
	//Render the swing behind the player
	depth = Player.depth + 50;
	
	//Set the chain amount depending on the width of the sprite [Useing 16x16 grid]
	ChainAmount = floor(sprite_height / 16);
	
	//Craete the platform
	Platform = instance_create_depth(x, y, depth-1, SwingPlatform);