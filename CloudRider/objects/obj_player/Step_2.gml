/// @description Insert description here
// You can write your code in this editor
var _tilemap = layer_tilemap_get_id("Tiles_Collision"); 
if (tileCollidingHorizontal(_tilemap)){
	show_debug_message("bouncing back")
	x = xprevious;
	hspeed = 0;
}
if (tileCollidingTop(_tilemap)){
	y = yprevious;
	vspeed = 0;
}
if (tileCollidingBot(_tilemap)){
	y = yprevious;
	vspeed = 0;
}
	