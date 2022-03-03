/// @description update colddowns
// You can write your code in this editor

var delta_second = delta_time /1000000;
arrowCDRemain -= delta_second;
immunityTimeLeft -= delta_second;
summonCloudCDRemain -= delta_second;
meleeAttackCDRemain -= delta_second;
if (lastRoom!=room){
	_tilemap = layer_tilemap_get_id("Tiles_Collision");
	hooked = false;
	hook = pointer_null;
	lastRoom = room;
}
if (items[2]){
	life += regeneratoHPRegenPS * delta_second;
	mana += regeneratorMPRegenPS * delta_second;
}

//max check
if (life > maxLife){
	life = maxLife;
}
if (mana > maxMana){
	mana = maxMana;
}

var apple_ID = instance_place(x, y, obj_apple); 
if (apple_ID != noone) {
	audio_play_sound(snd_gain_item, 1, false);
	obj_gameManager.score_val += apple_ID.apple_pts; 
	instance_destroy(apple_ID); 	
} 