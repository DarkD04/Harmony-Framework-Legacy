/// @description Insert description here
// You can write your code in this editor
	var YPos = (camera_get_view_y(view_camera[view_current]) * Value[5][2]) + Value[5][4];
	var Height = 128;
	Value[5][18] = (Water.y - YPos)*(1/Height);
	Value[5][18] = clamp(Value[5][18], -1, 1);