function Destructable(RegionW = 16, RegionH = 16){
	//Get screen values
	var c, cx, cy, sw, sh;
	c = view_camera[view_current]
	cx = camera_get_view_x(c)
	cy = camera_get_view_y(c)
	sw = Game.windowWidth;
	sh = Game.windowHeight;

	//Inactivate the object
		instance_deactivate_object(id);
		
	//Activate the object when its onscreen
	if(OnScreen())
		instance_activate_region(cx-RegionW, cy-RegionH, sw+RegionW, sh+RegionH, true);
	
	//Return the object ID
	return id                            
}