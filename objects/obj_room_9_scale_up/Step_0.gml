/// @description Insert description here
// You can write your code in this editor

if (image_xscale != 1 && image_yscale != 1)
{
	var new_scale = update_scalar(0, 1.5, scl_once);
	new_scale = ease_scalar(eas_in, new_scale, ease_amount);

	image_xscale = new_scale;
	image_yscale = new_scale;
}

else
{
	if (alarm[0] < 0) { alarm[0] = room_speed  };	
}