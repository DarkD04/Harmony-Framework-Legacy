/// @description Draw dev menu
	var c, cx, cy, sw, sh;
	c = view_camera[view_current];
	cx = camera_get_view_x(c);
	cy = camera_get_view_y(c);
	sw = Game.ScreenWidth;
	sh = Game.ScreenHeight;
	draw_sprite(BackgroundImage, 0, cx, cy);
	
	
	//Draw background
	draw_set_color(c_black);
	draw_set_alpha(0.75);
	draw_rectangle(cx, cy, cx+sw, cy+sh, false);
	draw_set_color(c_white);
	draw_set_alpha(1);
	
	if(!surface_exists(Surface))
		Surface = surface_create(sw, sh);
		
	surface_set_target(Surface)
	
	//Font
	Font = font_add_sprite_ext(fontDebug," ! #$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ",false,0)
	draw_set_font(Font);
	draw_set_halign(fa_center);
	
	draw_clear_alpha(c_black,0);
	switch(Section){
		case 0:
		//Selections
		draw_set_alpha(0.7);
		draw_rectangle(0, (sh/2)-16+(8*Select), sw, (sh/2)-16+8+(8*Select), false);
		draw_set_alpha(1);
		
		//Wave text!
		var DevText = string_upper("**Welcome to dev hell!**");
		for(var i = 0; i < string_length(DevText); i++)
			draw_text((sw/2)+(8*i)-8*string_length(DevText)/2, (sh/2)-64+(8*dsin((current_time/4)+8*i)), string_char_at(DevText , i+1));
			
		//Normal text
		draw_text(sw/2, (sh/2)-16, string_upper("Prensetation"));
		draw_text(sw/2, (sh/2)-8, string_upper("Level Select"));
		draw_text(sw/2, (sh/2), string_upper("Unfinished and tests"));
		draw_text(sw/2, (sh/2)+8, string_upper("Exit"));
		break;
		
		case 1:
			draw_set_alpha(0.7);
			draw_rectangle(0, (sh/2), sw, (sh/2)+8, false);
			draw_set_alpha(1);
			
			for(var i = 0; i < array_length(Presentation); i++){
				draw_text(sw/2, (sh/2)-64-(8*Select),string_upper("**Select the presentation**"));
				draw_text(sw/2, (sh/2+(8*i))-(8*Select),string_upper(string(room_get_name(Presentation[i]))));
				
			}
		break;
		
		case 2:
			draw_set_alpha(0.7)
			draw_rectangle(0, (sh/2), sw, (sh/2)+8, false)
			draw_set_alpha(1)
			
			for(var i = 0; i < array_length(Stages); i++){
				draw_text(sw/2, (sh/2)-64-(8*Select),string_upper("**Select the stage**"));
				draw_text(sw/2, (sh/2+(8*i))-(8*Select), string_upper(string(room_get_name(Stages[i]))));
				
			}
		break;
		
		case 3:
			draw_set_alpha(0.7)
			draw_rectangle(0, (sh/2), sw, (sh/2)+8, false)
			draw_set_alpha(1)
			
			for(var i = 0; i < array_length(Unfinished); i++){
				draw_text(sw/2, (sh/2)-64-(8*Select), string_upper("**TOP SECRETS**"));
				draw_text(sw/2, (sh/2+(8*i))-(8*Select),string_upper(string(room_get_name(Unfinished[i]))));
				
			}
		break;
	}
	
	
	draw_set_halign(fa_left)
	draw_text(4, sh-12, string_upper(string(window_get_caption()+" "+GM_version)));
	
	if(Section > 0)
		draw_text(4,sh-20,"PRESS S TO GO BACK.");
	
	surface_reset_target()
	draw_surface(Surface, cx, cy);