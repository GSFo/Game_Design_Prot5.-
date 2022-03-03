/// @description throw sword
// You can write your code in this editor
if(items[4]){
	var _dir = point_direction(x,y,mouse_x,mouse_y);
	//var _x = lengthdir_x(30,_dir);
	//var _y = lengthdir_y(30,_dir);
	sword = instance_create_layer(x,y,"Projectiles",obj_sword);
	if (items[5]){
		sword.roped = true;
	}
	sword.hspeed = sword.initialSpeed*cos(degtorad(_dir)) + hspeed;
	sword.vspeed = -sword.initialSpeed*sin(degtorad(_dir)) + vspeed;
	items[4] = false;
	//show_debug_message("Throw sword!");
}
else{
	if (instance_exists(sword)){
		if (sword.roped){
			sword.back = true;
			sword.rotate = false;
		}
	}
}
