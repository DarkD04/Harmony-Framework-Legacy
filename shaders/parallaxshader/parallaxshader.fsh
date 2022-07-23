	//Shader variables
	varying vec2 v_vTexcoord;
	varying vec4 v_vColour;
	varying vec2 v_vPosition;

	//Uniform for the parallax
	uniform vec2 Position;
	uniform bool  LineScroll;
	uniform float OffsetX;
	uniform float Width;
	uniform float LineGaps;
	uniform float YSteps;
	uniform float TexelWidth;
	
	//Variables
	float Result;

	void main(){
		float DiffX  = v_vPosition.x - Position.x;
	
		//Check if linescroll flag is on
		if(!LineScroll)  Result = mod(OffsetX + DiffX, Width) - DiffX;
		if(LineScroll)  Result = mod(OffsetX * (v_vPosition.y  / LineGaps * YSteps) + DiffX, Width) - DiffX;

		gl_FragColor = v_vColour * texture2D( gm_BaseTexture, vec2((v_vTexcoord.x) + Result * TexelWidth, v_vTexcoord.y));
	}
