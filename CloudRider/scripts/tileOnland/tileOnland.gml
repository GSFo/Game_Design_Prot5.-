// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function getBottom(){
	return bbox_bottom;
}

function tileOnland(_tilemap){
	var bot = getBottom();
	draw_text( x-sprite_xoffset,bot+5,"?")
	var onland = tilemap_get_at_pixel(_tilemap, bbox_left,bot+10)|| 
	tilemap_get_at_pixel(_tilemap, (bbox_left+bbox_right)/2, bot+10)||
	tilemap_get_at_pixel(_tilemap, bbox_right, bot+10);
	return onland;
}


function onlandStrict(_tilemap){
	var bot = getBottom();
	var onland = tilemap_get_at_pixel(_tilemap, bbox_left,bot+10)&& 
	tilemap_get_at_pixel(_tilemap, (bbox_left+bbox_right)/2, bot+10)&&
	tilemap_get_at_pixel(_tilemap, bbox_right, bot+10);
	return onland;
}