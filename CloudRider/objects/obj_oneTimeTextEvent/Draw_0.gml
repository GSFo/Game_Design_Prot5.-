/// @description no draw
// You can write your code in this editor

if (triggered){
	
	draw_set_color(c_white);
	draw_set_alpha(0.5); 
	draw_rectangle(obj_player.x-string_width(eventText)/2, 
				  (obj_player.y-(obj_player.sprite_yoffset*3)+string_height(eventText)/2),
				   obj_player.x+string_width(eventText)/2, 
				   obj_player.y-(obj_player.sprite_yoffset*3)-string_height(eventText)/2, 
				   false)
					   
	draw_set_font(Font1);			   
	draw_set_alpha(1); 
	draw_set_color(c_black)
	draw_set_halign(fa_middle)
	draw_set_valign(fa_center)				   
	draw_text(obj_player.x,obj_player.y-obj_player.sprite_yoffset*3,eventText)
}