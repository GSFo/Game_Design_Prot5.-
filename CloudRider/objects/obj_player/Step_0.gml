/// @description Insert description here
// You can write your code in this editor
//collision check with tilemap

if (tileOnland(layer_tilemap_get_id("Tiles_Collision"))){
	gravity = 0;
}
else{
	gravity = gravityEffect;
}