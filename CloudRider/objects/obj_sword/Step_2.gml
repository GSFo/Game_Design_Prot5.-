/// @description Insert description here
// You can write your code in this editor

if (!back){
	if (basicTileCollisionHandle(_tilemap)){
		rotate = false;
		audio_play_sound(snd_hookHitTile, 1, false);
		//vspeed = 0;
		//hspeed = 0;
		//gravity = 0;
	}
}
