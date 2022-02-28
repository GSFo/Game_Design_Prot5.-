/// @description launch hook
// You can write your code in this editor
if (hook == pointer_null || !instance_exists(hook)){
	hook = instance_create_layer(x+firePointX*image_xscale,y+firePointY*image_yscale, "Projectiles", obj_hook);
	with (hook){
		move_towards_point(mouse_x,mouse_y,initialSpeed)
		source = other;
	}
}
else{
	hook.back = true;
}