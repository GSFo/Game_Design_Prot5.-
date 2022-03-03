/// @description Insert description here
// You can write your code in this editor
if(rotate){
	audio_play_sound(snd_blood,1,false);
	
	damageCurr = damage*max(abs(vspeed*vspeed),1);
	//Better Sword effect
	if (obj_player.items[0]){
		damageCurr *= 2;
	}
	other.life -= damage*max(abs(vspeed*vspeed),1);
	other.hurt = true; 
	rotate = false;
}