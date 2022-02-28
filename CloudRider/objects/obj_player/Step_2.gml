/// @description tile collision check
// You can write your code in this editor

if (basicTileCollisionHandle(_tilemap)){
	if(hook!=pointer_null&&instance_exists(hook)&&hooked){
		hook.arrived=true;
	}
}

if (hooked){
	gravity=0;
}
if (x!=xprevious){
	image_xscale = sign(x-xprevious)*abs(image_xscale);
}
	