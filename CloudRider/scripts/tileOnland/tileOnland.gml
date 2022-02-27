// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tileOnland(_tilemap){
	return tilemap_get_at_pixel(_tilemap, x, y+.5)|| 
	tilemap_get_at_pixel(_tilemap, x+image_xscale * sprite_width  /2, y+.5)||
	tilemap_get_at_pixel(_tilemap, x+image_xscale * sprite_width, y+.5);
}