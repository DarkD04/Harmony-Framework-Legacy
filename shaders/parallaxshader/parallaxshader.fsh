	//Shader variables
	varying vec2 v_vTexcoord;
	varying vec4 v_vColour;
	varying vec2 v_vPosition;

	//Uniform for the parallax
	uniform vec2 Position;
	uniform bool  LineScroll;
	uniform vec2 OffsetX;
	uniform float Width;
	uniform float Height;
	uniform float LineGaps;
	uniform float YSteps;
	uniform float TexelWidth;
	uniform float YScale;
	
	//Variables
	float Result;

	void main(){		
		float DiffX  = (v_vPosition.x - Position.x);
		float DiffY  = (v_vPosition.y - Position.y);
	
		//Check if linescroll flag is on
		if(!LineScroll)  Result = mod(OffsetX.x + DiffX, Width) - DiffX;
		
		
		if(LineScroll)  Result = mod(floor(OffsetX.x * (1.0 + ceil((DiffY - 1.) / LineGaps / YScale) * YSteps)) + DiffX, Width) - DiffX;
		
		gl_FragColor = v_vColour * texture2D( gm_BaseTexture, vec2(v_vTexcoord.x + Result * TexelWidth, v_vTexcoord.y));
	}
