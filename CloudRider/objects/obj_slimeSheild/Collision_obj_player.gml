/// @description Insert description here
// You can write your code in this editor
if (other.immunityTimeLeft<=0){
	other.immunityTimeLeft = other.immunityTime;
	other.life -= collideDamage*damageScale;
}