/// @description Insert description here
// You can write your code in this editor
var delta_second = delta_time/1000000;
lifetime += delta_second;
if (lifetime<=maxLifetime/8){
	image_xscale = lifetime/maxLifetime*3*.5 +.5;
	image_yscale = lifetime/maxLifetime*3*.5 +.5;
}
else{
	ready = true;
}

if (lifetime>maxLifetime){
	instance_destroy()
}