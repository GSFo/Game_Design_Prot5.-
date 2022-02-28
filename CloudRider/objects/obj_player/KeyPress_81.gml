/// @description Summon Cloud
// You can write your code in this editor
if (summonCloudCDRemain <= 0){
	summonCloudCDRemain = summonCloudCD;
	with (instance_create_layer(x+firePointX*image_xscale,y+firePointY*image_yscale,"Projectiles",obj_cloud)){
		move_towards_point(mouse_x,mouse_y,initialSpeed);
	}
}