/// @description Essential
	//Trigger camera mode based on user event
	event_user(Mode);
	
	//Set position
	CameraX = clamp(TargetX + ShiftX, LimitLeft+CenterX, LimitRight-CenterX);
	CameraY = clamp(TargetY + ShiftY + LookShift - RollingOffset + 16, LimitTop+CenterY, LimitBottom-CenterY);
	
	//Scroll the room
	camera_set_view_pos(view_camera[view_current], floor(CameraX)-CenterX, floor(CameraY)-CenterY);
	
	//Scroll limit to the destination
	var cx, cy, sw, sh;
	cx = camera_get_view_x(view_camera[view_current])
	cy = camera_get_view_y(view_camera[view_current])
	sw = Game.windowWidth;
	sh = Game.windowHeight;
	
	//Reposition the limit
	if LimitBottom > DestinationBottom 
		LimitBottom = CameraY + CenterY;
	if LimitTop < DestinationTop 
		LimitTop = CameraY - CenterY;
	if LimitRight > DestinationRight 
		LimitRight = CameraX + CenterX;
	if LimitLeft < DestinationLeft 
		LimitLeft = CameraX - CenterX;
		
	//Move the limit
	LimitBottom = Approach(LimitBottom, DestinationBottom, 2);
	LimitTop = Approach(LimitTop, DestinationTop, 2);
	LimitRight = Approach(LimitRight, DestinationRight, 2);
	LimitLeft = Approach(LimitLeft, DestinationLeft, 2);
	
	//Reposition the limit when its outside of frame
	if LimitBottom > cy+sh+8
		LimitBottom = DestinationBottom;
	if LimitTop < cy-8
		LimitTop = DestinationTop;
	if LimitRight > cx+sw+8
		LimitRight = DestinationRight;
	if LimitLeft < cx-8
		LimitLeft = DestinationLeft;