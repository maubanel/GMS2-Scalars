/// @description Insert description here
// You can write your code in this editor
if (position_meeting(mouse_x, mouse_y, obj_bomb) && !blow_up)
{
	alarm[0] = -1;
	if (alarm[1] < 0) alarm[1] = room_speed * .1;
	size = 1;
	if (image_xscale <= 1)
	{
			var new_scale = update_scalar(1, .5, scl_once);
			new_scale = ease_scalar(eas_out, new_scale, 2);
			image_xscale += new_scale * .25;
			image_yscale += new_scale * .25;
	}	
	
	if (mouse_check_button_pressed(mb_left))
	{
		blow_up = true;
		image_speed = 1;
		if (alarm[2] < 1) alarm[2] = 1;
	}
	reset_scalar(0);
	
}
else if (!blow_up)
{
	alarm[2] = -1;
	if (alarm[0] < 0) alarm[0] = room_speed;
	size = .1;
	if (image_xscale >= .75)
	{
		var new_scale = update_scalar(0, 2, scl_once);
		new_scale = ease_scalar(eas_in, new_scale, 1);
		image_xscale -= new_scale * .25;
		image_yscale -= new_scale * .25;
	}	
	reset_scalar(1); 
}