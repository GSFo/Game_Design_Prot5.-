/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_middle)
draw_set_valign(fa_center)
barDisplay(80,20,200,20,life/maxLife,c_white,c_green)
draw_set_color(c_ltgray)
draw_text_transformed(180,30,string(round(life))+"/"+string(maxLife),.8,.8,0);
barDisplay(80,45,200,20,mana/maxMana,c_white,c_blue)
draw_set_color(c_ltgray)
draw_text_transformed(180,55,string(round(mana))+"/"+string(maxMana),.8,.8,0);

	