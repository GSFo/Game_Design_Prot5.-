/// @description Insert description here
// You can write your code in this editor

if(!preback && back){
	audio_stop_sound(snd_hookOut);
	audio_play_sound(snd_hookBack,1,false);
}
if(!preHookToCloud && hookedToCloud){
		audio_play_sound(snd_hookHitCloud,1,false);
}
preHookToCloud = hookedToCloud;
preback = back
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

if (attachedCloud!=pointer_null && instance_exists(attachedCloud)){
	with (source){
		if (distance_to_object(other)<other.minDistance){
			other.arrived = true;
			speed = 0;
		}
		else if (other.arrived){
			x += other.attachedCloud.x - other.x;
			y += other.attachedCloud.y - other.y;
		}
		else{
			move_towards_point(other.x,other.y,other.pullSpeed);
		}
	}
	x = attachedCloud.x;
	y = attachedCloud.y;
}
else if (hookedToCloud){
	back = true;
	source.hooked = false;
}