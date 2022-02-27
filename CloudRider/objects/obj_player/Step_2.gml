/// @description Insert description here
// You can write your code in this editor
if (tileCollidingHorizontal(_tilemap)){
	show_debug_message("bouncing back")
	x = xprevious;
	hspeed = 0;
}
if (tileCollidingTop(_tilemap)){
	y = yprevious;
	vspeed = 0;
}
if (tileCollidingBot(_tilemap)){
	y = yprevious;
	vspeed = 0;
}
	