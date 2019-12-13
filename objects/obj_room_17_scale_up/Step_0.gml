/// @description Insert description here
// You can write your code in this editor

var new_scale = update_scalar(0, 1.5, scl_once);
if (new_scale >= 1)
{
	if (alarm[0] < 0) { alarm[0] = room_speed  };	
}
new_scale = ease_scalar(eas_in_out, new_scale, ease_amount);

image_xscale = new_scale;
image_yscale = new_scale;


