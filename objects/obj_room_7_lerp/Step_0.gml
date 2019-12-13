/// @description Insert description here
// You can write your code in this editor
if ( y != yend)
{
	var new_y_pos =  update_scalar(0, 3, scl_once);
	ind = ease_scalar(eas_in, new_y_pos, ease_amount);
	y = lerp(ystart, yend, ind);
}

else
{
	if (alarm[0] < 0) { alarm[0] = room_speed  };	
}