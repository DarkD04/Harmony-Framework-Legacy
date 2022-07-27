function DrawBackground(ID, Sprite, FactorX, FactorY, OffsetX, OffsetY, Speed, Top, Left, Width, Height, LineScroll = false, Gaps = 1, Steps = 0,YScale = 1, AnimFrame = 0){
	//Last background ID
	BackgroundID = ID;
	
	//Background values
	Value[BackgroundID][0] = Sprite;
	Value[BackgroundID][1] = FactorX;
	Value[BackgroundID][2] = FactorY;
	Value[BackgroundID][3] = OffsetX;
	Value[BackgroundID][4] = OffsetY;
	Value[BackgroundID][5] = Speed;
	Value[BackgroundID][6] = Top;
	Value[BackgroundID][7] = Left;
	Value[BackgroundID][8] = Width;
	Value[BackgroundID][9] = Height;
	Value[BackgroundID][10] = LineScroll;
	Value[BackgroundID][11] = Gaps;
	Value[BackgroundID][12] = Steps;
	
	//Scroll and difference
	Value[BackgroundID][13] = 0;
	Value[BackgroundID][14] = 0;
	Value[BackgroundID][15] = 0;
	
	//Sprite and texel width
	Value[BackgroundID][16] = sprite_get_width(Sprite);
	Value[BackgroundID][17] = texture_get_texel_width(sprite_get_texture(Sprite, 0));
	
	//Extra arguments
	Value[BackgroundID][18] = YScale;
	Value[BackgroundID][19] = AnimFrame;
}