/// @description Insert description here
// You can write your code in this editor
//items[4] = true;
//show_debug_message("collide sword");
if(!other.rotate){
	//instance_destroy();
	//show_debug_message("pick sword");
	items[4] = true;
	with(other){
		instance_destroy();
	}
}
