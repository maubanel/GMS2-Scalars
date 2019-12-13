/// @description Insert description here
// You can write your code in this editor

if (image_alpha != 1)
{
	var new_alpha = update_scalar(0, 4, scl_once);
	new_alpha = ease_scalar(eas_in, new_alpha, ease_amount);
	image_alpha = new_alpha;
}
else
{
	if (alarm[0] < 0) { alarm[0] = room_speed  };	
}

