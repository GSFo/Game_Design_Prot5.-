/// @description Insert description here
// You can write your code in this editor
if(rotate){
	image_angle = -(current_time - startTime)*1.5;
	//show_debug_message("rotating");
}
else{
	//show_debug_message("not rotating");
	if(hooked){
		if(instance_exists(obj_hook)){
			x = obj_hook.x;
			y = obj_hook.y;
		}
		else{
			obj_player.items[4] = true;
			instance_destroy();
		}
	}
}
