/// @description gravity check
// You can write your code in this editor

if (tileOnland(layer_tilemap_get_id("Tiles_Collision"))||hooked){
	gravity = 0;
}
else{
	gravity = gravityEffect;
}

var delta_second = delta_time /1000000;
arrowCDRemain -= delta_second;