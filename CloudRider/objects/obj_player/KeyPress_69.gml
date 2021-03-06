/// @description launch hook
// You can write your code in this editor
if (hook == pointer_null || !instance_exists(hook)){
	audio_play_sound(snd_hookOut,1,false);
	hook = instance_create_layer(x+firePointX*image_xscale,y+firePointY*image_yscale, "Projectiles", obj_hook);
	with (hook){
		move_towards_point(mouse_x,mouse_y,initialSpeed)
		source = other;
	}
	image_xscale = sign(mouse_x-x)*1; 
}
else{
	//audio_stop_sound(snd_hookOut);
	//audio_play_sound(snd_hookBack,1,false);
	hook.back = true;
	hook.arrived = false;
	hooked = false;
	hook.attachedCloud = pointer_null;
	hook.hookedToCloud = false;
	gravity = gravityEffect;
}