/// @description update colddowns
// You can write your code in this editor



var delta_second = delta_time /1000000;
arrowCDRemain -= delta_second;
immunityTimeLeft -= delta_second;
summonCloudCDRemain -= delta_second;
meleeAttackCDRemain -= delta_second;
if (lastRoom!=room){
	_tilemap = layer_tilemap_get_id("Tiles_Collision");
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