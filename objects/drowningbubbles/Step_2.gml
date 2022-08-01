/// @description Script
	//Play the animation
	PlayerAnimation(AnimationSprite, 6, 6);
	
	//Age timer
	Age += 1;
	
	//Use animation system
	AnimationSystem()

	//Get screen position
	var cx = camera_get_view_x(view_camera[view_current]);
	var cy = camera_get_view_y(view_camera[view_current]);
	
	//Position the bubble 
	if(AniSubImage < 5){
		ScreenX = x - cx;	
		ScreenY = y - cy;	
	}else{
		x = cx+ScreenX;
		y = cy+ScreenY
	}
	
	//Ded
	if(Age > 110) instance_destroy();