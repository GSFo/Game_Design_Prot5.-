/// @description Insert description here
// You can write your code in this editor
if (!onlandStrict(_tilemap)){
	x = xprevious;
	direction =(direction+180)%360;
}

if (life<0){
	instance_destroy();
}

if (x != xprevious){
	image_xscale = abs(image_xscale)*sign(x-xprevious);
}

basicTileCollisionHandle(_tilemap);
