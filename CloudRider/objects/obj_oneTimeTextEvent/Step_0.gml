/// @description Insert description here
// You can write your code in this editor
if (position_meeting(obj_player.x,obj_player.y,id)){
	triggered = true;
}
else{
	if triggered{
		instance_destroy();
	}
}