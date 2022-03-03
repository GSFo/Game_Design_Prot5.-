/// @description Insert description here
// You can write your code in this editor
if(rotate){
	damageCurr = damage*max(abs(vspeed),1);
	//Better Sword effect
	if (obj_player.items[0]){
		damageCurr *= 2;
	}
	other.life -= damage*max(abs(vspeed),1);
	other.hurt = true; 
	show_debug_message(vspeed);
	rotate = false;
}