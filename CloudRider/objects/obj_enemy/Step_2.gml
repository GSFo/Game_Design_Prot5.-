/// @description Insert description here
// You can write your code in this editor
if (!tileOnland(_tilemap)){
	x = xprevious;
	direction =(direction+180)%360;
}

if (life<0){
	instance_destroy();
}
basicTileCollisionHandle(_tilemap);
