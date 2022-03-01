// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tileOnland(_tilemap){
	var onland = tilemap_get_at_pixel(_tilemap, x,sprite_yoffset+ y+.5)|| 
	tilemap_get_at_pixel(_tilemap, x+image_xscale * sprite_width  /2, sprite_yoffset+y+.5)||
	tilemap_get_at_pixel(_tilemap, x+image_xscale * sprite_width, sprite_yoffset+y+.5);
//	show_debug_message("onland")
	return onland;
}

function onlandStrict(_tilemap){
	var onland = tilemap_get_at_pixel(_tilemap, x,sprite_yoffset+ y+.5)&& 
	tilemap_get_at_pixel(_tilemap, x+image_xscale * sprite_width  /2, sprite_yoffset+y+.5)&&
	tilemap_get_at_pixel(_tilemap, x+image_xscale * sprite_width, sprite_yoffset+y+.5);
//	show_debug_message("onland")
	return onland;
}