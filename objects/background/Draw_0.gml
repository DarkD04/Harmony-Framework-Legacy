/// @description Drawing background
	
	for(var i = 0; i <= BackgroundID; i++){
		//Apply the shader
		shader_set(ParallaxShader)
		
		//Get shader's uniforms
		var BGWidth = shader_get_uniform(ParallaxShader, "Width");
		var BGTexel = shader_get_uniform(ParallaxShader, "TexelWidth");
		var OffX = shader_get_uniform(ParallaxShader, "OffsetX");
		var PosX = shader_get_uniform(ParallaxShader, "Position");
		var HeightY = shader_get_uniform(ParallaxShader, "LineGaps");
		var StepY = shader_get_uniform(ParallaxShader, "YSteps");
		var LineScr = shader_get_uniform(ParallaxShader, "LineScroll");
		
		//Set the local variables
		var Sprite = Value[i][0];
		var FactorX = 1-Value[i][1];
		var FactorY = Value[i][2];
		var OffsetX = Value[i][3];
		var OffsetY = Value[i][4];
		var Speed = Value[i][5];
		var Top = Value[i][6];
		var Left = Value[i][7];
		var Width = Value[i][8];
		var Height = Value[i][9];
		var LineScroll = Value[i][10];
		var Gaps = Value[i][11];
		var Steps = Value[i][12];
		var ScrollX = Value[i][13];
		var ScrollY = Value[i][14];
		var DifferenceX = Value[i][15];
		var SpriteWidth = Value[i][16];
		var TexWidth = Value[i][17];
		var YScale = Value[i][18];
		var AnimFrame = Value[i][19]

		//Scrolling
		var cx = camera_get_view_x(view_camera[view_current]);
		var cy = (camera_get_view_y(view_camera[view_current]) * FactorY) + OffsetY;
		
		//Set shader uniforms
		shader_set_uniform_f(BGWidth, SpriteWidth);
		shader_set_uniform_f(BGTexel, TexWidth);
		shader_set_uniform_f(OffX, (ScrollX));
		shader_set_uniform_f(PosX, cx, cy);
		shader_set_uniform_f(StepY, Steps);
		shader_set_uniform_f(HeightY, Gaps);
		shader_set_uniform_f(LineScr, LineScroll); 
		
		//Draw the background
		draw_sprite_part_ext(Sprite, AnimFrame, Left, Top, Width, Height, cx, cy, 1, YScale, c_white, 1.0);
		
		//Horizontal scroll
		Value[i][13] = ((cx * FactorX) - OffsetX) mod SpriteWidth;
		
		//Update the x offset by the speed
		Value[i][3] += Speed;
		
		shader_reset();
	}