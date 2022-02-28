/// @description Insert description here
// You can write your code in this editor

if (distance_to_object(source)>range){
	back = true;
}
if (back){
	move_towards_point(source.x,source.y,initialSpeed)
	if (distance_to_object(source)<returnDistance){
		instance_destroy();
		other.hooked = false;
	}
}
if (back){
	image_angle = direction;
}else{
	image_angle = 180+direction;
}
