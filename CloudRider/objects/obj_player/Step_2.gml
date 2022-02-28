/// @description tile collision check
// You can write your code in this editor
var _colliding = false;
if (tileCollidingHorizontal(_tilemap)){
//	show_debug_message("bouncing back")
	x = xprevious;
	hspeed = 0;
	_colliding = true;
}
if (tileCollidingTop(_tilemap)){
	y = yprevious;
	vspeed = 0;
	_colliding = true;
}
if (tileCollidingBot(_tilemap)){
	y = yprevious;
	vspeed = 0;
	_colliding = true;
}
if (_colliding){
	if(hook!=pointer_null&&instance_exists(hook)&&hooked){
		hook.arrived=true;
	}
}
if (x!=xprevious){
	image_xscale = sign(x-xprevious)*abs(image_xscale);
}
	