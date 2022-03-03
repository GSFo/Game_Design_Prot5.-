/// @description Insert description here
// You can write your code in this editor
if (life<0){
	obj_gameManager.score_val += score_pts; 
	instance_destroy();
}
if (tileCollidingHorizontal(_tilemap)){
	x = xprevious;
	direction =(180-direction)%360;
}
else if (tileOnland(_tilemap)&&!onlandStrict(_tilemap)){
	x = xprevious;
	direction =(180-direction)%360;
}
if (x != xprevious){
	image_xscale = abs(image_xscale)*sign(x-xprevious);
}

basicTileCollisionHandle(_tilemap)

if (hurt) {
	sprite_index = spr_slime_hurt; 	
	//audio_play_sound(snd_bossHurt,1,false);
} 

if(prelife > life){
	audio_play_sound(snd_bossHurt,1,false);
}
prelife = life;