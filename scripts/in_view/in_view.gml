function OnScreen(RegionW = 0, RegionH = 0) {
	var c, cx, cy, sw, sh;
	c = view_camera[view_current]
	cx = camera_get_view_x(c)
	cy = camera_get_view_y(c)
	sw = Game.windowWidth;
	sh = Game.windowHeight;
 
	if(bbox_right > cx-RegionW && (bbox_left < cx + sw +  RegionW && (bbox_bottom > cy - RegionH)) && (bbox_top < cy + sh-RegionH)) 
		return true; else return false;
}
