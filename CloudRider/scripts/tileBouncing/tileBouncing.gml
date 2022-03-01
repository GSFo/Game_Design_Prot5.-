// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tileBouncingHandle(_rate){
	if (tileCollidingBot(_tilemap)||tileCollidingTop(_tilemap)){
		y = yprevious;
		vspeed *= -_rate;
	}
	if (tileCollidingHorizontal(_tilemap)){
		x = xprevious;
		hspeed *= -_rate;
	}
	tileGravityHandle(_tilemap)
}