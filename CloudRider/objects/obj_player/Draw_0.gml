/// @description Insert description here
// You can write your code in this editor
draw_self()
//draw collision points 

draw_set_halign(fa_middle)
draw_set_valign(fa_center)
draw_text(x,getBottom()+5,"??")

var map =layer_tilemap_get_id("Tiles_Collision")
tileCollidingHorizontal(map)
tileCollidingBot(map)
tileCollidingTop(map)


// /*
//draw close range attack collision box: 
draw_set_color(c_aqua); 
draw_rectangle(x-sprite_xoffset*1.5, y+sprite_yoffset, x+sprite_xoffset*1.5, y-sprite_yoffset*2.2, true);
// */ 