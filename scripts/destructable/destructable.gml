function Destructable(RegionW = 64, RegionH = 64){
	//Get screen values
	var c, cx, cy, sw, sh;
	c = view_camera[view_current]
	cx = camera_get_view_x(c)
	cy = camera_get_view_y(c)
	sw = Game.ScreenWidth;
	sh = Game.ScreenHeight;

	//Inactivate the object
	if(!OnScreen(RegionW, RegionH))
		instance_deactivate_object(id);
		
	//Activate the object when its onscreen
	if(OnScreen(RegionW, RegionH))
		instance_activate_region(cx-RegionW, cy-RegionH, sw+RegionW, sh+RegionH, true);
	
	//Return the object ID
	return id    
}