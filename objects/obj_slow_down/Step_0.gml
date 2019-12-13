/// @description Insert description here
// You can write your code in this editor
if (position_meeting(mouse_x, mouse_y, obj_slow_down))
{
	if (mouse_check_button(mb_left))
	{
		image_xscale = -1.25;
		image_yscale = 1.25;
	}
	else 
	{
		var scalar = update_scalar(0, .75, scl_bounce_repeat, 0, .5, 1.15, 1);
		var ease = ease_scalar(eas_out, scalar, 1);
		var anim_val = lerp(.50, 1.15, ease);
		image_xscale = -anim_val;
		image_yscale = anim_val;
	}
	
	if (mouse_check_button_released(mb_left))
	{
		if (room_speed >= 30) 
		{
			room_speed = 15;
			image_index = 1;
		}
		else if (room_speed == 15) 
		{
			room_speed = 60;
			image_index = 0;
		}
	}
}