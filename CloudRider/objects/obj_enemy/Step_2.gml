/// @description Insert description here
// You can write your code in this editor
if (life<0){
	instance_destroy();
}
if (tileCollidingHorizontal(_tilemap)){
	x = xprevious;
	direction =(direction+180)%360;
}
else if (!onlandStrict(_tilemap)){
	x = xprevious;
	direction =(direction+180)%360;
}
if (x != xprevious){
	image_xscale = abs(image_xscale)*sign(x-xprevious);
}

basicTileCollisionHandle(_tilemap)

if (hurt) {
	sprite_index = spr_slime_hurt; 	
} 