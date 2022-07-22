function OnScreen(RegionW = 16, RegionH = 16) {
	var c, cx, cy, sw, sh;
	c = view_camera[view_current]
	cx = camera_get_view_x(c)
	cy = camera_get_view_y(c)
	sw = Game.windowWidth;
	sh = Game.windowHeight;
 
	if(bbox_left >= cx-RegionW && bbox_right <= cx+sw+RegionW && bbox_top >= cy+RegionH && bbox_bottom <= cy+sh+RegionH)
		return true;
}
