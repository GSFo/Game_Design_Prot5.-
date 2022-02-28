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

if (x!=xprevious) { 
	image_xscale = sign(x-xprevious)*abs(image_xscale);
}  

if (keyboard_key == 0 && sprite_index != spr_player_shoot && sprite_index != spr_player_jump) {
	sprite_index = spr_player_idle;
} 