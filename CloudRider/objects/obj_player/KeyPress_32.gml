/// @description Jump
// You can write your code in this editor
if (hook!=pointer_null&&instance_exists(hook) && hook.arrived){
	hooked = false;
	instance_destroy(hook);
	vspeed = -jumpPower;
}else{
	if (tileOnland(_tilemap)){
		vspeed = -jumpPower;
	}
}