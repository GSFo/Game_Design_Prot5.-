/// @description melee attack
// You can write your code in this editor
if (meleeAttackCDRemain<0 && items[4]){
	#region Small sword chop animation (old) 
	/* small sword chop animation code here 
	meleeAttackCDRemain = meleeAttackCD;
	var _dir = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
	var _x = lengthdir_x(30, _dir);
	var _y = lengthdir_y(30, _dir);
	var _atk = instance_create_depth(obj_player.x + _x, obj_player.y + _y +5, -obj_player.y, obj_atk);
	_atk.image_angle = _dir;
	_atk.image_yscale = 0.8;
	_atk.image_xscale = 0.8;
	if (items[0]){
		_atk.damage *=2;
	}
	if(_dir > 90 && _dir < 270){
		_atk.image_yscale = - _atk.image_yscale;
	}
	*/ 
	#endregion

// player attack animation here (player uses like a circle chop so all angles look the same) 
	meleeAttackCDRemain = meleeAttackCD;
	image_index = 0; 
	sprite_index = spr_player_front_atk;
	var inst_attacked = collision_rectangle(x-sprite_xoffset*1.5, y+sprite_yoffset, x+sprite_xoffset*1.5, y-sprite_yoffset*2.2, obj_enemy, false, true); 
	if (inst_attacked != noone) {
		if (items[0]) {
			inst_attacked.life -= damage*2; 	
		} 
		else {
			inst_attacked.life -= damage; 	
		} 
		inst_attacked.hurt = true; 
	} 
	
}