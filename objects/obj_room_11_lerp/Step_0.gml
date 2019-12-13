/// @description Insert description here
// You can write your code in this editor
var new_y_pos =  update_scalar(0, 3, scl_once);
var new_y_pos_2 = ease_scalar(eas_out, new_y_pos, ease_amount);
y = lerp(ystart, yend, new_y_pos_2);


if (new_y_pos >= 1)
{
	if (alarm[0] < 0) { alarm[0] = room_speed  };	
}