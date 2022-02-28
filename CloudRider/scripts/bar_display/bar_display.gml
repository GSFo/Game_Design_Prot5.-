// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function barDisplay(_x,_y,_w,_h,_pct,_bordercol,_barcol){
	_w = clamp(_w,20,320)
	if (_pct>1){
		_pct=1
	}
	draw_set_alpha(1)
	draw_set_color(_barcol)
	draw_rectangle(_x, _y, _x + (_w*_pct), _y + _h, false)

	draw_set_color(_bordercol)
	draw_rectangle(_x, _y, _x + _w, _y + _h, true)
}
