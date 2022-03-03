

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
