/// @description Insert description here
// You can write your code in this editor

var new_scale = update_scalar(0, 4, scl_once);
var new_scale_1 = ease_scalar(eas_out, new_scale, ease_amount);

image_xscale = new_scale_1;
image_yscale = new_scale_1;


if (new_scale >= 1)
{
	if (alarm[0] < 0) { alarm[0] = room_speed  };	
}