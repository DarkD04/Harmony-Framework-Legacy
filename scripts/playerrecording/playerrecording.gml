function PlayerRecording(){
	//Add timer for recording and then modulate it every 60 frames.
	RecordTimer = (RecordTimer + 1);
	
	//Record positions
	RecordX[RecordTimer] = floor(x);
	RecordY[RecordTimer] = floor(y);
	
	//Record the angle
	RecordAngle[RecordTimer] = image_angle;
	
	//Record scaling
	RecordXScale[RecordTimer] = image_xscale;
	RecordYScale[RecordTimer] = image_yscale;
	
	//Record animations
	RecordAnimation[RecordTimer] = sprite_index;
	RecordAnimationFrame[RecordTimer] = image_index;
}