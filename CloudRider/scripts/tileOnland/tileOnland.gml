// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function getBottom(){
	return -sprite_yoffset+ y + sprite_height-3;
}

function tileOnland(_tilemap){
	var bot = getBottom();
	draw_text( x-sprite_xoffset,bot+5,"?")
	var onland = tilemap_get_at_pixel(_tilemap, x-sprite_xoffset,bot+10)|| 
	tilemap_get_at_pixel(_tilemap, x-sprite_xoffset+sprite_width/2, bot+10)||
	tilemap_get_at_pixel(_tilemap, x-sprite_xoffset+sprite_width, bot+10);
//	show_debug_message("onland")
	return onland;
}


function onlandStrict(_tilemap){
	var bot = getBottom();
	var onland = tilemap_get_at_pixel(_tilemap, x-sprite_xoffset,bot+10)&&
	tilemap_get_at_pixel(_tilemap, x-sprite_xoffset+ sprite_width  /2, bot+10)&&
	tilemap_get_at_pixel(_tilemap, x-sprite_xoffset+ sprite_width, bot+10);
	return onland;
}