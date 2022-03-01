// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function getBottom(){
	return -image_yscale*sprite_yoffset+ y +image_yscale*sprite_height;
}

function tileOnland(_tilemap){
	var bot = getBottom();
	var onland = tilemap_get_at_pixel(_tilemap, x-sprite_xoffset*image_xscale,bot+15)|| 
	tilemap_get_at_pixel(_tilemap, x-sprite_xoffset*image_xscale+image_xscale * sprite_width  /2, bot+15)||
	tilemap_get_at_pixel(_tilemap, x-sprite_xoffset*image_xscale+image_xscale * sprite_width, bot+15);
//	show_debug_message("onland")
	return onland;
}


function onlandStrict(_tilemap){
	var bot = getBottom();
	var onland = tilemap_get_at_pixel(_tilemap, x-sprite_xoffset*image_xscale,bot+15)&&
	tilemap_get_at_pixel(_tilemap, x-sprite_xoffset*image_xscale+image_xscale * sprite_width  /2, bot+15)&&
	tilemap_get_at_pixel(_tilemap, x-sprite_xoffset*image_xscale+image_xscale * sprite_width, bot+15);
	return onland;
}