/// @description Insert description here
// You can write your code in this editor

var new_alpha = update_scalar(0, 2, scl_once);
if (new_alpha >= 1)
{
	if (alarm[0] < 0) { alarm[0] = room_speed;  }	
}
new_alpha = ease_scalar(eas_out, new_alpha, ease_amount);
image_alpha = new_alpha;



