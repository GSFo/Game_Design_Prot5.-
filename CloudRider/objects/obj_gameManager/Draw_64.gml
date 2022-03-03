
if (room != rm_lose &&room!= rm_win){
	// Draw box background for text 
	draw_set_alpha(0.85); 
	draw_set_color(c_ltgrey); 
	draw_rectangle(80, 70, 80+string_width("Score")*5.75, 80+string_height("Score")*1.3, false); 

	// Draw Text
	draw_set_alpha(1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);
	draw_set_font(Font1);
	draw_set_color(c_black);
	draw_text_transformed(80,85,"Score: "+string(score_val),1.5,1.5,0)
}else if (room == rm_lose){
	draw_set_halign(fa_center)
	draw_text_transformed(window_get_width()/2,window_get_height()/2, "You Lose!\n Score is :"+string(score_val)+"\nPress r to restart",3,3,0);
}
else{
	draw_set_halign(fa_center)
	draw_text_transformed(window_get_width()/2,window_get_height()/2, "You Win!\n Score is :"+string(score_val)+"\nPress r to restart",3,3,0);
}