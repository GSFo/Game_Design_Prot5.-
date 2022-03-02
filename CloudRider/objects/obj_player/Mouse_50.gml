/// @description melee attack
// You can write your code in this editor
if (meleeAttackCDRemain<0){
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
}